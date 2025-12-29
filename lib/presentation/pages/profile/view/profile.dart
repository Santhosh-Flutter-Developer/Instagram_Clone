import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/profile/view/mobile_profile/mobile_profile.dart';
import 'package:instagram_clone/presentation/pages/profile/view/web_profile/web_profile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebProfile(),
      tablet: MobileProfile(),
      mobile: MobileProfile(),
    );
  }
}