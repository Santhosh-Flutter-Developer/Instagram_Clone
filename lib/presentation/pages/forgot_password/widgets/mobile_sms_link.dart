import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';

class MobileSmsLink extends StatelessWidget {
  final RxBool smsLink;
  final RxBool multipleAccount;
  final RxBool anotherOption;
  const MobileSmsLink({super.key,required this.smsLink,required this.anotherOption,required this.multipleAccount});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                     multipleAccount.value=false;
                     smsLink.value=false;
                     anotherOption.value=true;
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Check your WhatsApp",
                      style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 20.h
                      ),),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:"We've sent a link to 9585038019. Use that link to confirm your account.",style: kAppTextTheme.bodyLarge?.copyWith(
                                fontSize: 12.h,
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                        height: 150.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kDisabledButtonBackground
                          ),
                          borderRadius: BorderRadius.circular(16.h),
                          image: DecorationImage(image: CachedNetworkImageProvider("https://th.bing.com/th/id/OIP.UQGJ2uTQIK4ys-95lKqYegHaEy?w=263&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3"),fit: BoxFit.cover)
                        ),
                        
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Row(
                        children: [
                          Icon(Icons.restart_alt,color: kWhite,),
                          SizedBox(
                            width: kWidth,
                          ),
                          Expanded(child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "It may take a few minutes for you to get this link.",
                                style: kAppTextTheme.bodyLarge?.copyWith(
                                  fontSize: 12.h,
                                )
                              ),
                              TextSpan(
                                text: "Get a new link",
                                style: kAppTextTheme.bodyLarge?.copyWith(
                                  color: kSelectedColor,
                                  fontSize: 12.h,
                                )
                              )
                            ]
                          )))
                        ],
                       ),
                     ),
                      SizedBox(
                      height: kHeight*2,
                    ),
                      AppButton(
                              label: "Try another way",
                              outline: true,
                              onTap: (){
                               
                              },
                            ),    
                  ],
                ),
              ),
            ),
              
          ],
        ),
      );
  }
}