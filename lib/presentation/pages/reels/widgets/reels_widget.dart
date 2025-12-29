import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_strings.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/reels/widgets/vertical_like_widget.dart';
import 'package:instagram_clone/presentation/widgets/app_outlined_button.dart';

class ReelsWidget extends StatelessWidget {
  const ReelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: CachedNetworkImage(imageUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/534331152_17852113308523567_7842313641900166182_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=107&ig_cache_key=MzcwMTA5ODMyMTI3MTAzMTY2NjE3ODUyMTEzMzAyNTIzNTY3.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=DEYUKjwxfOkQ7kNvwHzy5af&_nc_oc=AdmpZ2yoWaCkRq2PaFKZxhxDgjPzwZFp2qDMqTzsFIDNeftjUzcQvY4_41-ylfPZiuCV7Bv-LKtTxmwC9y0iCDvb&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PRiBs33L0JtineiGKFsr-g&oh=00_AfgmT_FoMulSCierDt5Kkg-drj0b0A2KTxQ5VRUHLWOXTA&oe=691A997F",
              fit: BoxFit.cover,),
            ),

            Positioned(
              bottom: 0,
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          VerticalLikeWidget(
                            icon: AppImages.icHeartOut,
                            count: "24.7K",
                            onTap: (){},
                          ),
                          VerticalLikeWidget(
                            icon: AppImages.icCommentOut,
                            count: "25",
                            onTap: (){},
                          ),
                          VerticalLikeWidget(
                            icon: AppImages.icRepostOut,
                            count: "201",
                            onTap: (){},
                          ),
                          VerticalLikeWidget(
                            icon: AppImages.icSendOut,
                            count: "2,086",
                            onTap: (){},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            title: Row(
                              children: [
                                Flexible(
                                  child: Text("meskki_here",style: kAppTextTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600
                                  ),),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                AppOutlinedButton(
                                  label: "Follow",
                                  outline: true,
                                  onTap: (){},
                                ),
                              ],
                            ),
                            
                           )),
                           
                           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: kWhite,))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Text("Avana Palivagunum | Oorum Blood | ....",style: kAppTextTheme.bodySmall,)),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: kWhite,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(image: CachedNetworkImageProvider(kDummyLogo))
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        );
  }
}