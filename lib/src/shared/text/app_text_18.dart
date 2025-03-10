import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText18 extends StatelessWidget{
  final String value;
  final Color? color;
  final FontWeight? fontWeight;
  const AppText18(this.value,{super.key ,this.color,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        fontWeight: fontWeight,
        color:color,
        fontSize: 18.sp,
      ),
    );
  }

}