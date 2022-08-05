import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/presentation/screens/product_dummy_data_screen.dart';

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
              title: 'Dummy Data',
              nextPage: ProductDummyDataScreen(),
            ),
            _buildNavButton(
              context,
              title: 'BLoC (Cubit)',
              nextPage: const SizedBox(),
            ),
            _buildNavButton(
              context,
              title: 'Riverpod',
              nextPage: const SizedBox(),
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
