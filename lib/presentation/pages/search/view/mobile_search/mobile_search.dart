import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/search/widgets/search_grid_tile.dart';
import 'package:instagram_clone/presentation/pages/search/controller/search_controller.dart';

class MobileSearch extends StatelessWidget {
   MobileSearch({super.key});

   final controller = Get.isRegistered<SearchGridController>()?Get.find<SearchGridController>():Get.put(SearchGridController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: TextFormField(
            style: kAppTextTheme.bodyMedium?.copyWith(
              color: kBorder,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(4.0),
              fillColor: kSearchColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kTransparent,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: kTransparent,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: kTransparent,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              prefixIcon: Icon(Icons.search,color: kBorder,),
              labelText: "Search with Meta AI",
              labelStyle: kAppTextTheme.bodyMedium?.copyWith(
                color: kBorder
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never
            ),
          ),
        ),
      ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(
          top: 10.0
        ),
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