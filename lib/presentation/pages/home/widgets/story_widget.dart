import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_strings.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';

class StoryWidget extends StatelessWidget {
  final bool? yourStory;
  final String? userName;
  final String? userLogo;
  const StoryWidget({super.key,this.yourStory,this.userName,this.userLogo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: 98.w,
        child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            if(yourStory==null || yourStory==false)
                             Container(
                                height: 98.h,
                                width: 98.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                 gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                  Color(0xFFCA0DBD),
                                  Color(0xFFB0313C),
                                  Color(0xFFE6BA2C),
                                 ],
                                 
                                 ),
        
                                ),
                              ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height:(yourStory!=null && yourStory==true)?98.h: 90.h,
                                width:(yourStory!=null && yourStory==true)?98.w: 90.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kTransparent,
                                  image: DecorationImage(image: CachedNetworkImageProvider(userLogo??kDummyLogo)),
                                ),
                              ),
                            ),
                            if(yourStory!=null && yourStory==true)
                            Positioned(
                              bottom: 10,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kDarkBackground
                                ),
                                child: Icon(Icons.add_circle_rounded,color: kWhite,)))
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(userName??"",maxLines: 1,overflow: TextOverflow.ellipsis,
                        style: kAppTextTheme.bodySmall,
                        )
                      ],
                    ),
      ),
    );
  }
}