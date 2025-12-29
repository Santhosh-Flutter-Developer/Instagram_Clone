import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/login/view/mobile_login/mobile_login.dart';
import 'package:instagram_clone/presentation/pages/login/view/web_login/web_login.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebLogin(),
      tablet: MobileLogin(),
      mobile: MobileLogin(),
    );
  }
}