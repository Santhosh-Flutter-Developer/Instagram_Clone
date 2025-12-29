import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/view/mobile_forgot_password/mobile_forgot_password.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/view/web_forgot_password/web_forgot_password.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebForgotPassword(),
      tablet: MobileForgotPassword(),
      mobile: MobileForgotPassword(),
    );
  }
}