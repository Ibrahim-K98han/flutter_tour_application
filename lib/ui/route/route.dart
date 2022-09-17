import 'package:flutter_tour_application/ui/views/auth/sign_in.dart';
import 'package:flutter_tour_application/ui/views/onboding_screen.dart';
import 'package:flutter_tour_application/ui/views/privecy_policy.dart';
import 'package:flutter_tour_application/ui/views/splash_screen.dart';
import 'package:get/get.dart';
import '../views/auth/sign_up.dart';
import '../views/user_form.dart';


const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String signIn = '/sign-in-screen';
const String userForm = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';


List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnbordingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: signIn, page: () => SignIn()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
];
