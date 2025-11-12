import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class SearchGridTile extends StatelessWidget {
  final Function()? onTap;
  final String? tileUrl;
  final String? viewCount;
  const SearchGridTile({super.key,this.onTap,this.tileUrl,this.viewCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onTap??(){},
          child: Stack(
            children: [
                    SizedBox(
                      width: double.infinity,
                      child: CachedNetworkImage(imageUrl:tileUrl?? "https://scontent.cdninstagram.com/v/t51.82787-15/550179450_17971683233948774_3369618211736319080_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08_tt6&_nc_cat=111&ig_cache_key=MzcyMzU0NzQ2Mjc4NDM3OTM4NjE3OTcxNjgzMjI3OTQ4Nzc0.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjEwODB4MTkyMC5zZHIuQzMifQ%3D%3D&_nc_ohc=mqbWG747_OQQ7kNvwGYd13L&_nc_oc=AdndDkJkVtiqJMy0DlhlRcAELFP7NtoM8GhV_qn2IN4SvDBwAAVGaSWR5LjX6lDQjYcAgfMRD8VIcq0cyFXEVBvl&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfhbhxxNVkaIjnLg6C3eMaVOdg9qXAzv3nkyUfH2UY10YQ&oe=691A6C66",
                      fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 170,
                      width: double.infinity,
                      color: kDarkCardBackground.withOpacity(0.2),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            AppSvgImage(path: AppImages.icViewOut,height: 14,width: 14,),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(viewCount??"1.4M",style: kAppTextTheme.bodySmall,)
                          ],
                        ),
                      ),
                    )
                  ],
          ),
        );
  }
}