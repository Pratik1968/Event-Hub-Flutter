
import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabWidget extends StatelessWidget{
  final bool active;
  const TabWidget(this.active,{super.key});
  
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (active)?1:0.2,
      child: Container(
        width: 8.w,
        height: 8.w,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(1000.w)
        ),
      ),
    );
  }
}