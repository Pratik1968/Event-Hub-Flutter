import 'package:event_hub/src/core/provider/root_provider.dart';
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
      child: RootProvider(
        child: MaterialApp.router(
          theme:AppTheme.lightTheme,
          darkTheme:AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
        ),
      ),
    );
  }

}