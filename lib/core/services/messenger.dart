import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

abstract class Messenger {
  void showSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 4),
  });
}

@LazySingleton()
class MessengerService implements Messenger {
  /* Create GlobalKey to be used in navigation */
  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void showSnackBar({
    required String message,
    EdgeInsets margin = EdgeInsets.zero,
    Duration duration = const Duration(seconds: 4),
  }) {
    if (rootScaffoldMessengerKey.currentState != null) {
      rootScaffoldMessengerKey.currentState
        ?..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            elevation: 0,
            duration: duration,
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.horizontal,
            margin: EdgeInsets.only(
              top: margin.top,
              bottom: margin.bottom,
              left: margin.left + 14.w,
              right: margin.right + 14.w,
            ),
          ),
        );
    }
  }
}
