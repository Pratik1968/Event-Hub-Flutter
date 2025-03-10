import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class  AppPrimaryButton extends StatelessWidget {
  final String text;
  final double? fontSize,width,height;
  final FontWeight? fontWeight;
  final void Function() onPressed;
  const AppPrimaryButton(this.text,{super.key,required this.onPressed,this.fontSize,this.fontWeight,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??double.infinity,
      height: height??58.h,
      child: TextButton(
        style: ButtonStyle(

          shape: WidgetStateProperty.fromMap({
            WidgetState.any:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w))
          }),
          backgroundColor: WidgetStateProperty<Color?>.fromMap({
            WidgetState.any:AppColor.primary,
          })
      
        ) ,
        onPressed: onPressed,
        
        child: Stack(
          children: [

            Positioned.fill(
              child: Center(
                child: Text(
                  
                  text,
                         
                  style: TextStyle(
                    
                    color: AppColor.white,
                    fontSize: fontSize?? 16.sp,
                    fontWeight: fontWeight ?? FontWeight.bold
                  ),
                ),
              ),
            ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child:IconWidget() ,)
          ],
        ),
      ),
    );
  }
}
class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HugeIcon(
        color: AppColor.white,
        icon: HugeIcons.strokeRoundedArrowRight01,),
    decoration: BoxDecoration(
      color: AppColor.blue200,
      shape: BoxShape.circle,
      

    ),
    );
  }
}