import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/home/view/mobile_home/mobile_home.dart';
import 'package:instagram_clone/presentation/pages/home/view/web_home/web_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebHome(),
      tablet: MobileHome(),
      mobile: MobileHome(),
    );
  }
}