import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/injection/service_locator.dart';
import '../../../../core/services/app_services.dart';
import '../cubits/product/product_cubit.dart';
import '../widgets/product_list.dart';
import '../widgets/product_list_error.dart';
import '../widgets/product_list_loading.dart';

class ProductCubitScreen extends HookWidget with AppMessengerService {
  const ProductCubitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getProducts(),
      child: Scaffold(
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
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _buildChild(context, state),
            );
          },
        ),
      ),
    );
  }

  Widget _buildChild(BuildContext context, ProductState state) {
    switch (state.status) {
      case ProductCubitStatus.initial:
        return const ProductListLoading();
      case ProductCubitStatus.loading:
        return const ProductListLoading();
      case ProductCubitStatus.failed:
        return ProductListError(failure: state.failure);
      case ProductCubitStatus.success:
        return ProductList(
          products: state.data ?? [],
          onRefresh: () {
            context.read<ProductCubit>().getProducts();
          },
        );
    }
  }
}
