import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/reels/view/mobile_reels/mobile_reels.dart';
import 'package:instagram_clone/presentation/pages/reels/view/web_reels/web_reels.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebReels(),
      tablet: MobileReels(),
      mobile: MobileReels(),
    );
  }
}