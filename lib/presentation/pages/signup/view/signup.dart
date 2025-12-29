import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/signup/view/mobile_signup/mobile_signup.dart';
import 'package:instagram_clone/presentation/pages/signup/view/web_signup/web_signup.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebSignup(),
      tablet: MobileSignup(),
      mobile: MobileSignup(),
    );
  }
}