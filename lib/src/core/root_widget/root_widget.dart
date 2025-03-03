import 'package:event_hub/src/core/router/router.dart';
import 'package:event_hub/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootWidget extends StatelessWidget{
  const RootWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375,812),
      child: MaterialApp.router(
        theme:ZTheme.lightTheme,
        darkTheme:ZTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }

}