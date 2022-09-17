import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tour_application/const/app_colors.dart';
import 'package:flutter_tour_application/ui/styles/styles.dart';
import 'package:flutter_tour_application/ui/views/auth/sign_in.dart';
import 'package:flutter_tour_application/ui/views/user_form.dart';
import 'package:get/get.dart';

import '../../widgets/violateBtton.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create \nYour Account',
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.violateColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Create your account and start your journey',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: AppStyles().textFieldDecoration('E-mail Address'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  decoration: AppStyles().textFieldDecoration('Enter Password'),
                ),
                SizedBox(
                  height: 100.h,
                ),
                ViolateButton('Create Account',()=>Get.to(UserForm())),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '--OR--',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/google.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                          text: 'Already an user?  ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          children: [
                          TextSpan(text: 'Log In', style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.violateColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap=() => Get.to(SignIn()),
                  ),
              ],
            ),
          ),
                ),
          ],
        ),
      ),
    ),)
    ,
    );
  }
}
