import 'package:event_hub/src/shared/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    
  scaffoldBackgroundColor:AppColor.backgroundColor,
   textTheme: GoogleFonts.nunitoTextTheme().copyWith(
    displayLarge:TextStyle(color: AppColor.appText),
   displayMedium:TextStyle(color: AppColor.appText),
   displaySmall:TextStyle(color: AppColor.appText),
   headlineLarge:TextStyle(color: AppColor.appText),
   headlineMedium:TextStyle(color: AppColor.appText),
   headlineSmall:TextStyle(color: AppColor.appText),
   titleLarge:TextStyle(color: AppColor.appText),
   titleMedium:TextStyle(color: AppColor.appText),
   titleSmall:TextStyle(color: AppColor.appText),
   bodyLarge:TextStyle(color: AppColor.appText),
   bodyMedium:TextStyle(color: AppColor.appText),
   bodySmall:TextStyle(color: AppColor.appText),
   labelLarge:TextStyle(color: AppColor.appText),
   labelMedium:TextStyle(color: AppColor.appText),
   labelSmall:TextStyle(color: AppColor.appText),
   ),
   inputDecorationTheme: InputDecorationTheme(
    
    focusedBorder:OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide:BorderSide(color: AppColor.primary))
   ),
   switchTheme: SwitchThemeData(
    overlayColor:  WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.selected)
        ? AppColor.white
        : null;
  }),
  trackColor: WidgetStateProperty.fromMap({
    WidgetState.selected:AppColor.primary,
    WidgetState.any:AppColor.white
  })
   )
  
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black

  );
}