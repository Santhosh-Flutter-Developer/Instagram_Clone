import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';


/// TEXT THEME
final kAppTextTheme = TextTheme(
  headlineLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 26.0.h,
    fontWeight: FontWeight.w600,
       letterSpacing: 1,
    height: 1.2,
  ),
  headlineMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 24.0.h,
    fontWeight: FontWeight.w500,
         letterSpacing: 1,
    height: 1.2,
  ),
  headlineSmall: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 22.0.h,
    fontWeight: FontWeight.w500,
        letterSpacing: 1,
    height: 1.2,
  ),
  titleLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 20.0.h,
    fontWeight: FontWeight.w500,
        letterSpacing: 1,
    height: 1.2,
  ),
  titleMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 18.0.h,
    fontWeight: FontWeight.w500,
        letterSpacing: 1,
    height: 1.2,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 16.0.h,
    fontWeight: FontWeight.w500,
        letterSpacing: 1,
    height: 1.2,
  ),
  bodyLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 14.0.h,
    fontWeight: FontWeight.w500,
        letterSpacing: 1,
    height: 1.2,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 12.0.h,
    fontWeight: FontWeight.w500,
         letterSpacing: 1,
    height: 1.2,
  ),
  bodySmall: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 10.0.h,
    fontWeight: FontWeight.w500,
      letterSpacing: 1,
    height: 1.2,
  ),
  labelLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kWhite,
    fontSize: 14.0.h,
    fontWeight: FontWeight.w400,
        letterSpacing: 1,
    height: 1.2,
  ),
);


/// TOOLTIP THEME
final kAppTooltipTheme = TooltipThemeData(
  textStyle: kAppTextTheme.bodyMedium?.copyWith(
    color: Colors.white,
  ),
);

/// APPBAR THEME
final kAppBarTheme = AppBarTheme(
  backgroundColor: kDarkBackground,
  systemOverlayStyle: const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ),
  titleTextStyle: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 18.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  elevation: 0,
  shadowColor: kAppBarShadowColor,
);