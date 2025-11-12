import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/home/models/stories_model.dart';

class HomeController extends GetxController{

  List stories = [
    StoriesModel(
      userName: "nithya_prettygirl",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/531270411_17842082586559425_8735884681632976697_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=109&_nc_oc=Q6cZ2QF-EyPUH3qy2U-Pr-sr0WCXZLVoShxaLtxgw-3jebqLKMsli2M7RIvULfgoqZ1QlIC9BxuLY0CYZ78hhrqFNk2r&_nc_ohc=OmX7KItfqD4Q7kNvwF4Ks6V&_nc_gid=6-lOW0RC1pwu7roJvPuuSg&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfgHgCuX2TathUpYSx7SSP6hYfLu-cJCemf-9-tL-s_FIQ&oe=691A2E6B&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "miahuffmann",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/432256953_3259050304389017_2885049139429241012_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby42OTYuYzIifQ&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QH3s0U66K8Vhp3sdb9L06qsUg_KStYJfQH9IdllzI5hCS1Joa6sHPxfn-SNT2IN8OUST4pI9unYrI4v_9Sbyw1y&_nc_ohc=xa00XMb7BAgQ7kNvwFNidTF&_nc_gid=rQK8xHzPJeT-hUJxc48_mw&edm=ANpRR28BAAAA&ccb=7-5&oh=00_AfieFv5lvaXDYZbIbpfHAarRHOei3fkZfPU1s9CFa8SxTw&oe=691A3424&_nc_sid=f657c9",
    ),
    StoriesModel(
      userName: "nithyaja_",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/409137183_1106696250470434_1263979563273049801_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=110&_nc_oc=Q6cZ2QH3s0U66K8Vhp3sdb9L06qsUg_KStYJfQH9IdllzI5hCS1Joa6sHPxfn-SNT2IN8OUST4pI9unYrI4v_9Sbyw1y&_nc_ohc=-N-Sv2qSOGYQ7kNvwGfO9fP&_nc_gid=rQK8xHzPJeT-hUJxc48_mw&edm=ANpRR28BAAAA&ccb=7-5&oh=00_AfgrxPEHc1x25lPCs2occF07I8WjKTGSP_UStvuL0bv1HQ&oe=691A2F04&_nc_sid=f657c9",
    ),
    StoriesModel(
      userName: "mridhula_korapati",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/569880137_18315930274174945_3803473985361358568_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QHs9LQ9kHV3yVAQ5tnvY4XJS2HTPqY_ywI_GfvY9ZAYcFWHSQCbq_1MBsGE6Ig1IE1Sb4l3FCx5DBBo6Zra6gmC&_nc_ohc=itFDpHcCs5sQ7kNvwH2GuhW&_nc_gid=9KbfnsOmek5sOvMuM_t3Rw&edm=APCB0h8BAAAA&ccb=7-5&oh=00_AfjQMHMT1ICCxXsDoopx2hpQKDEs-Z9UzBsQ3ynHhuhr9Q&oe=691A3199&_nc_sid=849a81",
    ),
    StoriesModel(
      userName: "akshaya_hariharan",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/560399198_18413208307116798_8386790202431932161_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QEwnhU4orWSIMdKzI0qycgv-QkHykcV4eXPM4yRLYWnMCqQCgduofyvJ6FD4KTo6Y1uUKWj8cd5G8_LW7KFvoDB&_nc_ohc=TG9iqwXB-FoQ7kNvwHFFP8G&_nc_gid=ee6CTkhm_RLkOsvtaRqSvQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfjugnW0XDxdg6ZnJ_WKuMJ6bKNE-X-x6tyc-E8ejkjqWA&oe=691A3358&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "khadiija37official",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/504559310_17866935855395806_5001142309717298019_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QFiYURo7zux6diGmRs65o_UYuKtfcy6mrbjDo5gYrMlmpBCLLcld3yiIVy08NFEDmHPKFEj0ptWNUDXsnDocBvk&_nc_ohc=GmRudJw-92sQ7kNvwGzbjjm&_nc_gid=ayXcG1tvr1My0o-kEJem3Q&edm=APNOSGoBAAAA&ccb=7-5&oh=00_AfjvDjFen72WUtc8RAC0JHLvDCy-Xh6_B9dIKLLvCXDZtQ&oe=691A352D&_nc_sid=ca40e6",
    ),
    StoriesModel(
      userName: "ms.shrutiofficial",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/491515128_693683743120363_5266175313839989225_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2QFiYURo7zux6diGmRs65o_UYuKtfcy6mrbjDo5gYrMlmpBCLLcld3yiIVy08NFEDmHPKFEj0ptWNUDXsnDocBvk&_nc_ohc=F_49MWCeJ6MQ7kNvwHapzjQ&_nc_gid=ayXcG1tvr1My0o-kEJem3Q&edm=APNOSGoBAAAA&ccb=7-5&oh=00_AfhoqmTOwmEbuuQOcuoBg4KV24b1YPq-wFTVt4Oqat_G4g&oe=691A3746&_nc_sid=ca40e6",
    ),
    StoriesModel(
      userName: "thepreethiasrani",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/461785143_555323140268479_8790866926509574561_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QEwnhU4orWSIMdKzI0qycgv-QkHykcV4eXPM4yRLYWnMCqQCgduofyvJ6FD4KTo6Y1uUKWj8cd5G8_LW7KFvoDB&_nc_ohc=eGHBpGD8XGMQ7kNvwEdIz-k&_nc_gid=ee6CTkhm_RLkOsvtaRqSvQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_Afi0jsdvkZo--KIdC-Em7Tb8DurER548UwZGLipfu4zO0w&oe=691A3773&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "swathikaa_official",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/462355228_384468194735125_845334858965077624_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=101&_nc_oc=Q6cZ2QEwnhU4orWSIMdKzI0qycgv-QkHykcV4eXPM4yRLYWnMCqQCgduofyvJ6FD4KTo6Y1uUKWj8cd5G8_LW7KFvoDB&_nc_ohc=6OtJLGuz0mkQ7kNvwFtSHKU&_nc_gid=ee6CTkhm_RLkOsvtaRqSvQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_Afhg5YIJBJV9cgoVO4VjYVP8cBALUCelBVwsQ2TPZg-5Pw&oe=691A0D7A&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "rukmini_vasanth",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/475992616_1973160186484533_8662327681276875582_n.jpg?stp=dst-jpg_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QF-EyPUH3qy2U-Pr-sr0WCXZLVoShxaLtxgw-3jebqLKMsli2M7RIvULfgoqZ1QlIC9BxuLY0CYZ78hhrqFNk2r&_nc_ohc=2t_ZgYJPEJgQ7kNvwHMP9Qr&_nc_gid=6-lOW0RC1pwu7roJvPuuSg&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfiPKKLJyw5XIZIsUYW8WwF0gmOEQRaHu0BXMImnv8t7Qw&oe=691A2FE8&_nc_sid=10d13b",
    ),
   
  ];

@override
  void onInit() {
    super.onInit();
  }

}