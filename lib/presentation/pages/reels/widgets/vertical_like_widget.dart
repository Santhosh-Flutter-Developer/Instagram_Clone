import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class VerticalLikeWidget extends StatelessWidget {
  final String? icon;
  final String? count;
  final Function()? onTap;
  const VerticalLikeWidget({super.key,this.icon,this.count,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap??(){},
      child: Column(
        mainAxisSize: MainAxisSize.min,
                          children: [
                            AppSvgImage(path: icon??AppImages.icHeartOut),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(count??'',style: kAppTextTheme.bodySmall,),
                            SizedBox(
                              height: 8.h,
                            )
                          ],
                        ),
    );
  }
}