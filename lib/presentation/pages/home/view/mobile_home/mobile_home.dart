import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_strings.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/home/controller/home_controller.dart';
import 'package:instagram_clone/presentation/pages/home/widgets/like_widget.dart';
import 'package:instagram_clone/presentation/pages/home/widgets/story_widget.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class MobileHome extends StatelessWidget {
   MobileHome({super.key});
final controller = Get.isRegistered<HomeController>()?Get.find<HomeController>():Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: 120.w,
          child: Image.asset(AppImages.icInstaFontLogodark)),
        actions: [
          IconButton(onPressed: (){}, icon: AppSvgImage(path: AppImages.icHeartOut)),
          IconButton(onPressed: (){}, icon: AppSvgImage(path: AppImages.icMessengerFill)),
        ],
      ),
      body: Column(
        children: [
         
          Expanded(
            child: ListView.builder(
              itemCount: 100,
            
              itemBuilder: (context,index){
              return index==0? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryWidget(
                    yourStory: true,
                    userName: "Your story",
                  ),  
                  ...List.generate(controller.stories.length, (index)=>StoryWidget(
                    yourStory: false,
                    userName: controller.stories[index].userName??'',
                    userLogo: controller.stories[index].userLogo??'',
                  ))
                ],
              ),
            ),
          ): Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: CachedNetworkImage(imageUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/568956222_18086085428298927_65363893771830504_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc0NjcxNzU2MTIyNTYxODg1NQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=1Xn1QLIyHkEQ7kNvwHYyWec&_nc_oc=AdmhjWWxMv06a9yW9Kh3ZoSI-aDDagvxQJBt53X8m1sDO7PuW87IwRTxzKyupmJp46O74YeExzU4ICqK8D5Z9Ude&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=3PUsb3E8nA3F2UXDwbw8rw&oh=00_AfgwMK0QbjCT9GJHuDdmy88_AdTTfuzKmX5b7jzyoxul4A&oe=692291F7"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            children: [
                              Stack(
                                    alignment: Alignment.center,
                                    children: [
                                     
                                       Container(
                                          height: 40.h,
                                          width: 40.w,
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
                                          height:36.h,
                                          width:36.w,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kTransparent,
                                            image: DecorationImage(image: CachedNetworkImageProvider(kDummyLogo)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                           Expanded(child: ListTile(
                            title: Text("meskki_here",style: kAppTextTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600
                            ),),
                            subtitle: Row(
                              children: [
                                Icon(Icons.music_note,color: kWhite,size: 14.h,),
                                Expanded(child: Text("Original audio",style: kAppTextTheme.bodySmall,))
                              ],
                            ),
                           )),
                           
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: kWhite,))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    LikeWidget(
                                      icon: AppImages.icHeartOut,
                                      onTap: (){},
                                      count: "221K",
                                    ),
                                    LikeWidget(
                                      icon: AppImages.icCommentOut,
                                      onTap: (){},
                                      count: "14.7K",
                                    ),
                                    LikeWidget(
                                      icon: AppImages.icRepostOut,
                                      onTap: (){},
                                      count: "4,6364",
                                    ),
                                    LikeWidget(
                                      icon: AppImages.icSendOut,
                                      onTap: (){},
                                      count: "1M",
                                    ),
                                   
                                  ],
                                ),
                              ),
                              Icon(Icons.bookmark_outline_rounded,color: kWhite,)
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "meskki_here ",style: kAppTextTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600
                              )),
                              TextSpan(
                                text: "Guessing what's in the glasses ",
                                style: kAppTextTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "#reels # fyp",
                                style: kAppTextTheme.bodyMedium?.copyWith(
                                  color: kTag
                                ),
                              )
                            ]
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text("26 September",style: kAppTextTheme.bodySmall?.copyWith(
                              color: kBorder
                            ),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}