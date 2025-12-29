import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/profile/controller/profile_controller.dart';
import 'package:instagram_clone/presentation/pages/profile/widgets/profile_card.dart';
import 'package:instagram_clone/presentation/pages/search/widgets/search_grid_tile.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class MobileProfile extends StatelessWidget {
   MobileProfile({super.key});

final controller = Get.isRegistered<ProfileController>()?Get.find<ProfileController>():Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    RxInt selectedIndex = 0.obs;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60.h), child: AppBar(
       automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             AppSvgImage(path: AppImages.icLock),
              SizedBox(
          width: 6,
        ),
            Expanded(child: Text("call_me_santhosh",style: kAppTextTheme.bodyLarge,)),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        actions: [
          AppSvgImage(path: AppImages.icThread),
        SizedBox(
          width: 10,
        ),
        AppSvgImage(path: AppImages.icAddOut),
        SizedBox(
          width: 10,
        ),
        
        AppSvgImage(path: AppImages.icMenu),
         SizedBox(
          width: 10,
        ),
        ],
      )),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProfileCard(),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            toolbarHeight: 40,
            flexibleSpace: 
            Row(
              children: [
                ...List.generate(controller.tabs.length, (ind)=>Expanded(
                  child:Obx(()=> GestureDetector(
                    onTap: (){
                      selectedIndex.value=ind;
                    },
                    child: Column(
                      children: [
                        AppSvgImage(path: controller.tabs[ind]),
                        Spacer(),
                       Container(
                      width: double.infinity,
                      height: 2,
                        decoration: BoxDecoration(
                          color:selectedIndex.value==ind? kWhite:kTransparent,
                          borderRadius: BorderRadius.circular(6.0)
                        ),
                       )
                      ],
                    ),
                  )),
                ),)
                
              ],
            )
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
                    padding: EdgeInsets.only(
                      top: 10.0
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.profileGrid.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    mainAxisExtent: 170,
                    ),
                    itemBuilder: (context,index)=>SearchGridTile(
                      tileUrl: controller.profileGrid[index].tileUrl??'',
                      viewCount: controller.profileGrid[index].viewCount??'',
                    )),
          )
        ],
      ),
    );
  }
}