import 'package:chat_app/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.light,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),
      toolbarHeight: 120.h,
    ),


    textTheme: TextTheme(
      titleLarge: AppText.titleLarge,  // for AppBar Title
      // titleMedium: ,
      // titleSmall: ,
      displayLarge: AppText.displayLarge, // for any text in display large Size
      displayMedium: AppText.displayMedium, // for any text in display medium Size
      displaySmall: AppText.displaySmall, // for any text in display small Size
      // headlineLarge: ,
      // headlineMedium: ,
      // headlineSmall: ,
      labelLarge: AppText.labelLarge, // for large label
      labelMedium: AppText.labelMedium, // for medium label
      // labelSmall: ,
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r),),
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 18.h)
      ),
    ),

  );



  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.dark,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
        size: 30.r,
      ),
      toolbarHeight: 120.h
    ),
  );
}