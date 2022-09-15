import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tour_application/const/app_colors.dart';
import 'package:flutter_tour_application/const/app_string.dart';
import 'package:flutter_tour_application/ui/route/route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: GoogleFonts.poppinsTextTheme(
                  Theme.of(context).textTheme.apply(),
                ),
              scaffoldBackgroundColor: AppColor.scaffoldColor
            ),
            initialRoute: splash,
            getPages: getPages,
            home: SplashScreen(),
          );
        });
  }
}
