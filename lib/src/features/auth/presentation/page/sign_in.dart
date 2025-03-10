import 'package:event_hub/src/features/auth/presentation/widget/password_input.dart';
import 'package:event_hub/src/shared/button/app_button.dart';
import 'package:event_hub/src/shared/button/app_primary_button.dart';
import 'package:event_hub/src/shared/constant/color.dart';
import 'package:event_hub/src/shared/switch/app_switch.dart';
import 'package:event_hub/src/shared/text/app_text_14.dart';
import 'package:event_hub/src/shared/text/app_text_24.dart';
import 'package:event_hub/src/shared/text_input/text_input.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:event_hub/src/shared/text/app_text_18.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 69.h, left: 29.w, right: 29.w),
          child: SizedBox.expand(
            child: Column(
              children: [
                SvgPicture(AssetBytesLoader('assets/vector/logo.svg.vec')),
                SizedBox(height: 56.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText24("Sign in", fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.h),
                Column(
                  spacing: 19.h,
                  children: [
                    AppInput(
                      prefixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedMail01,
                        size: 24.0,
                        color: AppColor.black200,
                      ),
                      hintText: 'Enter the email',
                    ),
                  PasswordInput()
                  ],
                  
                ),
                SizedBox(
                  height: 22.h,
                ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 7.7.w,

                          children: [
                            AppSwitch(),
                            AppText14(
                              "Remember Me",
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        AppButton("Forgot Password?", onPressed: () {}),
                      ],
                    ),
              SizedBox(height: 20.h,),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 24.w),
                 child: AppPrimaryButton(
                  "Sign in",
                  onPressed: () {
                    
                  },
                 ),
               ),
          Expanded(flex: 1,child: SizedBox()),
          AppButton("Don’t have an account?  Sign up",onPressed: () {
            
          },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
