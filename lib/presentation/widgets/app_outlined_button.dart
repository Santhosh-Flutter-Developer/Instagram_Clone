import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';

class AppOutlinedButton extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  final bool? outline;
  final double? height;
  const AppOutlinedButton({super.key,this.label,this.onTap,this.outline,this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?? 30,
      child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor:outline==true? kWhite:kTransparent,
              backgroundColor:outline==true?kTransparent: kPrimaryButtonBackground,
              side: BorderSide(
                color:outline==true? kWhite:kTransparent,
              ),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                
              )
            ),
            onPressed:onTap?? (){},
            child: Text(label??'',style: kAppTextTheme.bodySmall),
          ),
    );
  }
}