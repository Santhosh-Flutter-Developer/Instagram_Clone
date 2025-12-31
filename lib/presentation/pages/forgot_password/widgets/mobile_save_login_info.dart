import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';

class MobileSaveLoginInfo extends StatelessWidget {
  final RxBool smsLink;
  final RxBool multipleAccount;
  final RxBool anotherOption;
  final RxBool confirmSms;
  final RxBool saveLogin;
  final RxBool confirmPassword;
  const MobileSaveLoginInfo({super.key,required this.smsLink,required this.multipleAccount,required this.anotherOption,required this.confirmSms,required this.saveLogin,required this.confirmPassword});

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
                     anotherOption.value=false;
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*4,
                    ),
                     Center(
                      child: Text('Save your login info?',maxLines: 1,textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                                  style: kAppTextTheme.bodyLarge?.copyWith(
                                    fontSize: 18.h
                                  ),),
                    ),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10.0),
                        child: Text("We'll save the login info for 5287.sandy to your device's cloud backup, so you won't need to enter it on this device next time you log in.",textAlign: TextAlign.center,
                                    style: kAppTextTheme.bodyLarge?.copyWith(
                                      fontSize: 12.h
                                    ),),
                      ),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                    Center(
                       child: CircleAvatar(
                                    radius: 80,
                                    backgroundColor: kDarkCardBackground,
                                    child: CircleAvatar(
                                      radius: 79,
                                      backgroundColor: kDarkBackground,
                                      backgroundImage: CachedNetworkImageProvider("https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png"),
                                    ),
                                  ),
                     ),
                     
                         
                  ],
                ),
              ),
            ),
              AppButton(
                              label: "Save",
                              onTap: (){
                              smsLink.value=false;
                              multipleAccount.value =false;
                              anotherOption.value =false;
                              saveLogin.value=false;
                              confirmPassword.value=true;
                              },
                            ),
                             SizedBox(
                      height: kHeight*2,
                    ),
                           AppButton(
                              label: "Not now",
                              outline: true,
                              onTap: (){
                              smsLink.value=false;
                              multipleAccount.value =false;
                              anotherOption.value =false;
                              saveLogin.value=false;
                              confirmPassword.value=true;
                              },
                            ),  
          ],
        ),
      );
  }
}