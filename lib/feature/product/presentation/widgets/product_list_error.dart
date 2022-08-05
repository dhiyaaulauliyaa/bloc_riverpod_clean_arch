import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/sizing_const.dart';
import '../../../../core/errors/failures.dart';

class ProductListError extends StatelessWidget {
  const ProductListError({
    Key? key,
    required this.failure,
    this.onRetry,
  }) : super(key: key);

  final Failure? failure;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _errorMessage(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizingConst.childPadding/2),
          SizedBox(
            width: 1.sw * 0.4,
            child: ElevatedButton(
              onPressed: () {
                onRetry?.call();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.tealAccent,
                onPrimary: Colors.black,
              ),
              child: Text(
                'Retry',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _errorMessage() {
    var errCode = failure?.code ?? '000';
    var errMsg = failure?.message ?? 'Unknown Error';

    if (failure is ServerFailure) {
      return 'ERROR\n[$errCode]: $errMsg';
    } else if (failure is NetworkFailure) {
      return 'ERROR\n$errMsg';
    }

    return 'ERROR';
  }
}
