import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';

class MobileMultipleAccount extends StatelessWidget {
  final RxBool swap;
  final RxBool multipleAccount;
  final RxBool anotherOption;
  const MobileMultipleAccount({super.key,required this.swap,required this.multipleAccount,required this.anotherOption});

  @override
  Widget build(BuildContext context) {
    List accounts = [
      {
        "title": "***7.s***y",
        "logo":"https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png",
        "enable":false.obs,
        
      },
      {
        "title": "***g_d***ula*",
        "logo":"https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png",
        "enable":false.obs,
      },
      {
        "title": "***tho***560",
        "logo":"https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png",
        "enable":false.obs,
      },
      {
        "title": "***tho***s17**",
        "logo":"https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png",
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
                     
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Which account are you having trouble logging in to?",
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
                              text:"These are the accounts that we found associated with 9585038019.",style: kAppTextTheme.bodyLarge?.copyWith(
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
                              ...List.generate(accounts.length,(index)=>
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                onTap:  (){
                                  for(int i=0;i<accounts.length;i++){
                                    accounts[i]["enable"].value=false;
                                  }
                                  accounts[index]["enable"].value =!accounts[index]["enable"].value;
                                },
                                leading: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: kDarkCardBackground,
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: kDarkBackground,
                                    backgroundImage: CachedNetworkImageProvider(accounts[index]["logo"]??"https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png"),
                                  ),
                                ),
                                title: Text(accounts[index]["title"]??'',style: kAppTextTheme.bodyLarge?.copyWith(
                                  fontSize: 12.h
                                ),),
                                subtitle: Text("Instagram",style: kAppTextTheme.bodyLarge?.copyWith(
                                  fontSize: 12.h,
                                  color: kDisabledButtonBackground
                                ),),

                                trailing:Obx(()=> Radio(
                                  activeColor: kSelectedColor,
                                  value: accounts[index]["enable"]!=null?accounts[index]["enable"].value: false, groupValue: true, onChanged: (val){
                                  for(int i=0;i<accounts.length;i++){
                                    accounts[i]["enable"].value=false;
                                  }
                                  accounts[index]["enable"].value =!accounts[index]["enable"].value;
                                })),
                              ),)
                            ],
                          ),
                        ),
                       ),
                     ),
                      GestureDetector(
                        onTap: (){
                         multipleAccount.value=false;
                         anotherOption.value = true;
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(kHeight*2),
                          child: Text("Try a different email address or phone number",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: kAppTextTheme.bodyLarge?.copyWith(
                            color: kSelectedColor,
                            fontSize: 12.h,
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
                               
                              },
                            ),
          ],
        ),
      );
  }
}