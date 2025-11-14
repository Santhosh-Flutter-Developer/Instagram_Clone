import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';

class AppOutlinedButton extends StatelessWidget {
  final String? label;
  final Function()? onTap;
  const AppOutlinedButton({super.key,this.label,this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: kWhite,
              side: BorderSide(
                color: kWhite
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