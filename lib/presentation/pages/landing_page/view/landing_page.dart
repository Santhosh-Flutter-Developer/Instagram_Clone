import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_strings.dart';
import 'package:instagram_clone/presentation/pages/home/view/home.dart';
import 'package:instagram_clone/presentation/pages/reels/view/reels.dart';
import 'package:instagram_clone/presentation/pages/search/view/search.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    Home(),
    Search(),
    Container(),
    Reels(),
    Container(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackground,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: kDarkBackground,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(AppImages.icHomeFill,AppImages.icHomeOut, 'Home', 0),
            buildNavBarItem(AppImages.icSearchFill,AppImages.icSearchOut ,'Search', 1),    
            buildNavBarItem(AppImages.icAddFill,AppImages.icAddOut ,'Create', 2),
            buildNavBarItem(AppImages.icReelsFill,AppImages.icReelsOut ,'Reels', 3),
            buildNavBarItem(AppImages.icAddFill,AppImages.icAddOut,'Profile', 4,widget: CircleAvatar(
              backgroundColor:_selectedIndex==5? kWhite:kTransparent,
              radius: 16.w,
              child: CircleAvatar(
                radius: 15.w,
                backgroundColor: kDarkBackground,
                backgroundImage: CachedNetworkImageProvider(kDummyLogo),
              ),
            )),
          ],
        ),
      ),
     
    );
  }

  Widget buildNavBarItem(String selectedIcon,String unselectedIcon, String label, int index,{Widget? widget}) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child:widget?? Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppSvgImage(
            path: _selectedIndex==index? selectedIcon:unselectedIcon,
            iconColor: _selectedIndex == index
                ? kWhite
                : kWhite,
            height: 22,
            width: 22,
          ),
          
        ],
      ),
    );
  }
}
