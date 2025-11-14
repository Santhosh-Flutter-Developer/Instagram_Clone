

import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/reels/models/reels_model.dart';
import 'package:instagram_clone/presentation/pages/reels/models/reels_model_items.dart';

class ReelsController extends GetxController{

  RxInt selectedIndex = 0.obs;

  List reelList = [
    ReelsModel(
      title: "Reels",
      items: <ReelsModelItems>[
        ReelsModelItems(
          
        ),
      ]
    ),
    {
      "title": "Reels",
      "items":[
        {
          "userName": "",
          "userLogo": "",
          "follow": true,
          "description": "",
          "likeCount": "",
          "commentCount": "",
          "rePostCount": "",
          "shareCount": "",
          "musicLogo":"",
          "content":[
            {
              "url": "",
              "type": "",
            }
          ],
        }
      ]
    },
    {
      "title": "Friends",
      "items":[
        {
          "userName": "",
          "userLogo": "",
          "follow": true,
          "description": "",
          "likeCount": "",
          "commentCount": "",
          "rePostCount": "",
          "shareCount": "",
          "musicLogo":"",
          "content": [],
        }
      ]
    }
  ];

  @override
  void onInit() {
    super.onInit();
  }
}