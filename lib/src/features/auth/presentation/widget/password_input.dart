import 'package:event_hub/src/shared/constant/color.dart';
import 'package:event_hub/src/shared/text_input/text_input.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool showPassword= false;
  @override
  Widget build(BuildContext context) {
    return   AppInput(
                      isPassword: !showPassword,
                      suffixIcon: GestureDetector(
                        onTap:()=>
                          setState(() {
                            showPassword =!showPassword;
                          })
                        ,
                        child: HugeIcon(
                          icon: (showPassword)?HugeIcons.strokeRoundedEye:HugeIcons.strokeRoundedViewOff,
                          size: 24.0,
                          color: AppColor.black200,
                        ),
                      ),
                      prefixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedLock,
                        size: 24.0,
                        color: AppColor.black200,
                      ),
                      hintText: 'Enter the password',
                    )
                 ;
  }
}