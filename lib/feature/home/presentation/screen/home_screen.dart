import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/presentation/screens/product_cubit_screen.dart';
import '../../../product/presentation/screens/product_riverpod_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNavButton(
              context,
              title: 'BLoC (Cubit)',
              nextPage: const ProductCubitScreen(),
            ),
            _buildNavButton(
              context,
              title: 'Riverpod',
              nextPage: const ProductRiverpodScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
    BuildContext context, {
    required String title,
    required Widget nextPage,
  }) {
    return SizedBox(
      width: 1.sw * 0.4,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => nextPage,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.tealAccent,
          onPrimary: Colors.black,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
