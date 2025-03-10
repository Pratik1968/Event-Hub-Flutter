import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon,suffixIcon;
  final bool isPassword;
  const AppInput({super.key,this.hintText,this.prefixIcon,this.isPassword=false,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(),
      
      obscureText: isPassword,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontWeight: FontWeight.bold,color: AppColor.gray200),
       contentPadding:EdgeInsets.symmetric(vertical: 21.h,horizontal: 15.w) ,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            
            color: AppColor.gray100
            )
        ),
        hintText: hintText
      ),
    );
  }
}