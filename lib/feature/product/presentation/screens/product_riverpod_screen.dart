import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/services/app_services.dart';
import '../providers/product_provider.dart';
import '../widgets/product_list.dart';
import '../widgets/product_list_error.dart';
import '../widgets/product_list_loading.dart';

class ProductRiverpodScreen extends HookWidget with AppMessengerService {
  const ProductRiverpodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUCTS',
          style: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: _buildChild(ref),
          );
        },
      ),
    );
  }

  Widget _buildChild(WidgetRef ref) {
    return ref.watch(productStateNotifierProvider).when(
          init: () => const ProductListLoading(),
          loading: () => const ProductListLoading(),
          error: (failure) => ProductListError(failure: failure),
          success: (data) => ProductList(
            products: data,
            onRefresh: () {
              ref.read(productStateNotifierProvider.notifier).getProducts();
            },
          ),
        );
  }
}
