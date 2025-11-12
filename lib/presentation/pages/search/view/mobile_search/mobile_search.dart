import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/search/widgets/search_grid_tile.dart';
import 'package:instagram_clone/presentation/pages/search/controller/search_controller.dart';

class MobileSearch extends StatelessWidget {
   MobileSearch({super.key});

   final controller = Get.isRegistered<SearchGridController>()?Get.find<SearchGridController>():Get.put(SearchGridController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),
      body: GridView.builder(
        itemCount: controller.searchGrid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        mainAxisExtent: 170,
        ),
        itemBuilder: (context,index)=>SearchGridTile(
          tileUrl: controller.searchGrid[index].tileUrl??'',
          viewCount: controller.searchGrid[index].viewCount??'',
        )),
    );
  }
}