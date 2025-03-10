import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText14 extends StatelessWidget{
  final String value;
  final Color? color;
  final FontWeight? fontWeight;
  const AppText14(this.value,{super.key ,this.color,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        fontWeight: fontWeight,
        color:color,
        fontSize: 14.sp,
      ),
    );
  }

}