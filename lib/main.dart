import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/injection/service_locator.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, Widget? __) => MaterialApp(
        title: 'MotionApp',
        home: const SizedBox(),
        theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.spaceGroteskTextTheme().apply(
            bodyColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
