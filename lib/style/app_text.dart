import 'package:chat_app/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {


  // titleMedium: ,
  // titleSmall: ,

  // headlineLarge: ,
  // headlineMedium: ,
  // headlineSmall: ,

  // labelMedium: ,
  // labelSmall: ,



  static TextStyle titleLarge = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 20.sp,
  fontWeight: FontWeight.bold
  );

  static TextStyle displayLarge = GoogleFonts.poppins(
  color: Colors.black,
  fontSize: 24.sp,
  fontWeight: FontWeight.bold
  );
  static TextStyle displayMedium = GoogleFonts.poppins(
  color: AppColor.lightBlack,
  fontSize: 14.sp,
  fontWeight: FontWeight.normal
  );
  static TextStyle displaySmall = GoogleFonts.poppins(
  color: AppColor.lightGrey,
  fontSize: 12.sp,
  fontWeight: FontWeight.normal
  );

  static TextStyle labelLarge = GoogleFonts.poppins(
  color: AppColor.lightGrey,
  fontSize: 18.sp,
  fontWeight: FontWeight.normal
  );
  static TextStyle labelMedium = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 14.sp,
  fontWeight: FontWeight.w500
  );
}