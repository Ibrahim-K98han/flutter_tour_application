import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tour_application/const/app_colors.dart';
import 'package:get/get.dart';

class ViolateButton extends StatelessWidget {
  String title;

  ViolateButton(this.title);

  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          onTap: () {
            _value.value = true;
          },
          child: Container(
            height: 45.h,
            decoration: BoxDecoration(
                color: AppColor.violateColor,
                borderRadius: BorderRadius.all(Radius.circular(5.r))),
            child: _value == false
                ? Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Please Wait',
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Transform.scale(
                          scale: 0.4, child: CircularProgressIndicator(
                        color: Colors.white,
                      ))
                    ],
                  ),
          ),
        ));
  }
}
