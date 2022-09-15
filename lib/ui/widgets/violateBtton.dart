import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tour_application/const/app_colors.dart';
import 'package:get/get.dart';

class ViolateButton extends StatelessWidget {
  RxBool _value = false.obs;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _value.value = true;
      },
      child: Container(
        height: 45.h,
        decoration:
            BoxDecoration(
              color: AppColor.violateColor,
                borderRadius: BorderRadius.all(Radius.circular(5.r))
            ),
        child: Center(
          child: Text('Create Account',style: TextStyle(
            fontSize: 17.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),),
        ),
      ),
    );
  }
}
