import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  AppButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function() onPressed;
  const AppButton(this.text,{super.key,required this.onPressed,this.fontSize,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      
      style: ButtonStyle(
       
        overlayColor: WidgetStateProperty.fromMap({
          WidgetState.any:AppColor.primary.withAlpha(5)
        }),
        splashFactory: NoSplash.splashFactory
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.appText,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.bold
        ),
      ),
    );
  }
}