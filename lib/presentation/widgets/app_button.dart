import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  final double? height;
  final bool? outline;
  const AppButton({super.key,this.label,this.onTap,this.height,this.outline});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:10.0.w),
      child: SizedBox(
        height: height?? 50,
        width: double.infinity,
        child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                backgroundColor:outline==true?kTransparent: kSelectedColor,
               side: BorderSide(
                color:outline==true? kSelectedColor:kTransparent,
              ),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  
                )
              ),
              onPressed:onTap?? (){},
              child: Text(label??'',style: kAppTextTheme.bodySmall?.copyWith(
                color:outline==true? kSelectedColor:null
              )),
            ),
      ),
    );
  }
}