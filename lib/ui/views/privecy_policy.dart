import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tour_application/ui/widgets/violateBtton.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ViolateButton(
                'Agree',
                () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
