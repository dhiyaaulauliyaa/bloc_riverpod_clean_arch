import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';

class ProductListError extends StatelessWidget {
  const ProductListError({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final Failure? failure;

  @override
  Widget build(BuildContext context) {
    var errCode = failure?.code ?? '000';
    var errMsg = failure?.message ?? 'Unknown Error';

    return Center(
      child: Text(
        'Error\n[$errCode]: $errMsg',
        textAlign: TextAlign.center,
      ),
    );
  }
}
