import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText24 extends StatelessWidget{
  final String value;
  final Color? color;
  final FontWeight? fontWeight;
  const AppText24(this.value,{super.key ,this.color,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        color:color,
        fontSize: 24.sp,
        fontWeight: fontWeight
      ),
    );
  }

}