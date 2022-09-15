import 'package:flutter_tour_application/ui/views/onboding_screen.dart';
import 'package:flutter_tour_application/ui/views/splash_screen.dart';
import 'package:get/get.dart';
import '../views/auth/sign_up.dart';


const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';


List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnbordingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
];
