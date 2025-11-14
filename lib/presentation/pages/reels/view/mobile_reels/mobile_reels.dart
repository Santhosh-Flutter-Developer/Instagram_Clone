import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/reels/controller/reels_controller.dart';
import 'package:instagram_clone/presentation/pages/reels/widgets/reels_widget.dart';

class MobileReels extends StatelessWidget {
   MobileReels({super.key});
final controller = Get.isRegistered<ReelsController>()?Get.find<ReelsController>():Get.put(ReelsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>GestureDetector(
              onTap: (){
                controller.selectedIndex.value=0;
                controller.selectedIndex.refresh();
              },
              child: Text("Reels",style: kAppTextTheme.titleMedium?.copyWith(
                color: controller.selectedIndex.value==0?kWhite:kBorder.withOpacity(0.6),
                fontSize: controller.selectedIndex.value ==0? 18.0.h:16.0.h,
              ),))),
            SizedBox(
              width: 30.w,
            ),
            Obx(()=>GestureDetector(
                onTap: (){
                controller.selectedIndex.value=1;
                controller.selectedIndex.refresh();
              },
              child: Text("Friends",style: kAppTextTheme.titleMedium?.copyWith(
                color: controller.selectedIndex.value==1?kWhite:kBorder.withOpacity(0.6),
                fontSize: controller.selectedIndex.value ==1? 18.0.h:16.0.h,
              ),))),
          ],
        ),
      ),
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
        return ReelsWidget();
      })
    );
  }
}