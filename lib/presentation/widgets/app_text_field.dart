import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';



class AppTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final String? label;
  final IconData? prefixIcon;
  const AppTextField({super.key,this.label,this.textEditingController,this.hintText,this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:8.0,horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height / 13,
            child: TextField(
              controller: textEditingController,
              style: kAppTextTheme.bodyLarge?.copyWith(
                fontSize: 12.h,
                color: kDarkSecondaryText
              ),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
cursorColor: kDarkSecondaryText,
              decoration: InputDecoration(
                hintText: hintText??"",
                hintStyle: kAppTextTheme.bodyLarge?.copyWith(
                  fontSize: 12.h,
                  color: kDarkSecondaryText
                ),
                filled: true,
                fillColor: kTransparent,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: textEditingController!.text.isEmpty
                          ? kDividers.withOpacity(0.4)
                          : kSelectedColor,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: kSelectedColor,
                    )),
                prefixIcon:prefixIcon!=null? Icon(
                 prefixIcon?? Icons.mail_outline_rounded,
                  color: textEditingController!.text.isEmpty
                      ? const Color(0xFF151624).withOpacity(0.5)
                      : kSelectedColor,
                  size: 16,
                ):null,
               
              ),
            ),
          ),
        ],
      ),
    );
  }
}