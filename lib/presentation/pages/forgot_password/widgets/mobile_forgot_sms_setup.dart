import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';

class MobileForgotSmsSetup extends StatelessWidget {
  final RxBool multipleAccount;
  final RxBool anotherOption;
  final RxBool smsLink;
  final RxBool confirmSms;
  const MobileForgotSmsSetup({super.key,required this.multipleAccount,required this.anotherOption,required this.smsLink,required this.confirmSms});

  @override
  Widget build(BuildContext context) {
    List smsSetup = [
      {
        "title": "Get code or link via WhatsApp",
        "subtitle":"9585038019",
        "enable":false.obs,
        
      },
      {
        "title": "Get code via Instagram notification",
        "subtitle":"on devices where you're logged in",
        "enable":false.obs,
      },
      {
        "title": "Get code or link via SMS",
        "subtitle":"9585038019\nCarrier charges may apply",
        "enable":false.obs,
      },
      
    ];

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
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Center(
                      child: Text('Choose a way to log in.',maxLines: 1,textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                                  style: kAppTextTheme.bodyLarge?.copyWith(
                                    fontSize: 12.h
                                  ),),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kDisabledButtonBackground
                          ),
                          borderRadius: BorderRadius.circular(16.h),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ...List.generate(smsSetup.length,(index)=>
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                onTap:  (){
                                  for(int i=0;i<smsSetup.length;i++){
                                    smsSetup[i]["enable"].value=false;
                                  }
                                  smsSetup[index]["enable"].value =!smsSetup[index]["enable"].value;
                                },
                                
                                title: Text(smsSetup[index]["title"]??'',maxLines: 1,overflow: TextOverflow.ellipsis,
                                style: kAppTextTheme.bodyLarge?.copyWith(
                                  fontSize: 12.h
                                ),),
                                subtitle: Text(smsSetup[index]["subtitle"]??'',style: kAppTextTheme.bodyLarge?.copyWith(
                                  fontSize: 12.h,
                                  color: kDisabledButtonBackground
                                ),),

                                trailing:Obx(()=> Radio(
                                  activeColor: kSelectedColor,
                                  value: smsSetup[index]["enable"]!=null?smsSetup[index]["enable"].value: false, groupValue: true, onChanged: (val){
                                  for(int i=0;i<smsSetup.length;i++){
                                    smsSetup[i]["enable"].value=false;
                                  }
                                  smsSetup[index]["enable"].value =!smsSetup[index]["enable"].value;
                                })),
                              ),)
                            ],
                          ),
                        ),
                       ),
                     ),
                         
                  ],
                ),
              ),
            ),
              AppButton(
                              label: "Continue",
                              onTap: (){
                              smsLink.value=true;
                              multipleAccount.value =false;
                              anotherOption.value =false;
                              },
                            ),
          ],
        ),
      );
  }
}