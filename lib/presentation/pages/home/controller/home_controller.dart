import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/home/models/stories_model.dart';

class HomeController extends GetxController{

  List stories = [
    StoriesModel(
      userName: "nithya_prettygirl",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/568819443_17880135147410152_1761639303164177181_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDI0LmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=104&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=LZQW6xYhW_kQ7kNvwHeCmlK&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfjUQUirRN7JBkI6_EOkfyRR0NaKHFVm2Xih9I-asCXptQ&oe=69226F70&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "miahuffmann",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/432256953_3259050304389017_2885049139429241012_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby42OTYuYzIifQ&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=105&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=JPE3RxUjeVoQ7kNvwGJNJrT&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfgtI4IiTxoiqY_DexAhEmMEqzrpBt1D-4rkPIodL9-aig&oe=69228DA4&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "nithyaja_",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/409137183_1106696250470434_1263979563273049801_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=110&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=9JuQgrhrMl0Q7kNvwEWwdUN&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_Afha5XnjMJCcD2_AnatcE6Fnf76AAf_MBspa2FKllPaPIw&oe=69228884&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "mridhula_korapati",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/569880137_18315930274174945_3803473985361358568_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QHYXwXPXmye8KYNc5RlLoTO9W995FHYmuEdxO3OPEN06q1YVl2-uC_7JNjfbLsrQsE2fHVXRdwFxoSLJX48yUDh&_nc_ohc=01G3rMn1MzcQ7kNvwF_0G6g&_nc_gid=LdLqlujqPO7v0n_SMjsR9g&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfifzJA7Lrc7GcsL9Sse5jsvSpqL02tM2Np2utZNLAb2iw&oe=69228B19&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "akshaya_hariharan",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/581205928_18415175692188087_8809035463326585699_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby43MzMuYzIifQ&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QGV5OELC2eFqTvB74_DrooP9hPpNrSDzwGZ6oFOVbApwqMCOt3tqvecYB2HgsvVFijrfk4NxUY8H-OhY8jsjRPQ&_nc_ohc=qhMWgAANivoQ7kNvwFm7o0V&_nc_gid=0yb491IeNRH1Y3bGbP-i-A&edm=APNOSGoBAAAA&ccb=7-5&oh=00_AfiGqRmniLdfAErLND2rccNMOv7Doj-vAjn3Y97kMLqtcg&oe=692293E7&_nc_sid=ca40e6",
    ),
    StoriesModel(
      userName: "khadiija37official",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/504559310_17866935855395806_5001142309717298019_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=tBhz_l8d6TYQ7kNvwHAnYqI&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_Afi2hrFhvZPpBqi6A3zqPh4VDgbqmi9Z8F7hYBD6YdaChA&oe=69228EAD&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "ms.shrutiofficial",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/491515128_693683743120363_5266175313839989225_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=fqAk2fqWch8Q7kNvwG5MDq4&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfiQXsPy-R8x5w1LFnahvybCqX0JLVHMfw9pSPQrKXTaWw&oe=692290C6&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "thepreethiasrani",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/461785143_555323140268479_8790866926509574561_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=Re4DG4c-jrMQ7kNvwH1jAmt&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfglO_lXrr2agmEff80tkpAoRjy_jNiaLn9LHkCCpyCN4Q&oe=692290F3&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "swathikaa_official",
      userLogo: "https://instagram.fmaa3-2.fna.fbcdn.net/v/t51.2885-19/581484590_18373976851157856_8323123393220614382_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-2.fna.fbcdn.net&_nc_cat=100&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=lXpup75lXQsQ7kNvwF6-jCr&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfiwHcWFGxUJlyIpjMhsjtAzBHgq9gg503OLMdSkcQJ53A&oe=69226601&_nc_sid=10d13b",
    ),
    StoriesModel(
      userName: "rukmini_vasanth",
      userLogo: "https://instagram.fmaa3-3.fna.fbcdn.net/v/t51.2885-19/540694207_18065466164582275_6052359145249090714_n.jpg?stp=dst-jpg_e0_s150x150_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fmaa3-3.fna.fbcdn.net&_nc_cat=1&_nc_oc=Q6cZ2QEvPBxbQPVktqCKdh9IyIct_tkD7IqO6OdRZSaBaqjMoqvh5RerF2vIrDkiMLLv2POsNVsqdocur4vHfPMR7ziT&_nc_ohc=F6lYu0woh8IQ7kNvwERXHnL&_nc_gid=Xe5TSdalP63_9cQ4wjsRpQ&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfgXU3AztKzzK7T_rO7qVVthYcA2ZS0VD2gFyOUE4ZLkbw&oe=6922765C&_nc_sid=10d13b",
    ),
   
  ];

@override
  void onInit() {
    super.onInit();
  }

}