import 'package:flutter/material.dart';
import 'package:instagram_clone/presentation/pages/search/view/mobile_search/mobile_search.dart';
import 'package:instagram_clone/presentation/pages/search/view/web_search/web_search.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      //Desktop - 1100 | Tab - 700 | Mobile - 250
      breakpoints:
          const ScreenBreakpoints(desktop: 1100, tablet: 700, watch: 250),
      desktop:const WebSearch(),
      tablet: MobileSearch(),
      mobile: MobileSearch(),
    );
  }
}