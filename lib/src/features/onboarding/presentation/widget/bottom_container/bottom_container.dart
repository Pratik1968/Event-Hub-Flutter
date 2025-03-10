import 'package:event_hub/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:event_hub/src/features/onboarding/presentation/widget/bottom_container/button_group.dart';
import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomContainer extends StatelessWidget {
  final String title, description;
  const BottomContainer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 288.h,

      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.white, blurRadius: 500.h),
          BoxShadow(color: Colors.white, blurRadius: 500.h),
          BoxShadow(color: Colors.white, blurRadius: 500.h),
          BoxShadow(color: Colors.white, blurRadius: 500.h),
        ],
        borderRadius: BorderRadius.vertical(top: Radius.circular(48.w)),
        color: AppColor.blue100,
      ),
      child: Column(
        spacing: 16.h,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            description,
            style: TextStyle(color: AppColor.white),
            textAlign: TextAlign.center,
          ),
          Expanded(flex: 1, child: SizedBox()),
          ButtonGroup(),
        ],
      ),
    );
  }
}
