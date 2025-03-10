import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSwitch extends StatefulWidget {
  const AppSwitch({super.key});

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return      SizedBox(
                    width: 40.w,
        height: 30.h,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: value,
                        onChanged: (v) {
                      setState(() {
                        value=v;
                      });
                        },
                      ),
                    ),
                  )
             ;
  }
}