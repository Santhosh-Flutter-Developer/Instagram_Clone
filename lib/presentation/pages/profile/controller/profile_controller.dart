
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/presentation/pages/search/models/search_grid_model.dart';

class ProfileController extends GetxController{

  List profileGrid = [
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/559941765_17941722243065709_1630425675415280950_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=102&ig_cache_key=MzcyODczMzAyMjYzNzQxNDcwNjE3OTQxNzIyMjM3MDY1NzA5.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=So-yJr3R37gQ7kNvwGywdlC&_nc_oc=AdnWaf0kSgcnaHiF_DT0iak4vU5LX93FkfGWemdvRYkVlxiIEeU9beCRnPW-ri_ETPIub5YbKwqOwEMzoQP6b1i_&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfizHiidSCfyhYNNpwosASZ5N1usUzFGGjegIjhmvIZ1zA&oe=69228753",
      viewCount: "1.4M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/565992041_18300430495269625_4837246623368035715_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc0NDY2MjQzNzgwMzE1ODA4NDE4MzAwNDMwNDg5MjY5NjI1.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjcyMHgxMjgwLnNkci5DMyJ9&_nc_ohc=9AgYnvYSsK0Q7kNvwHaJWYq&_nc_oc=AdnJkZbw-CFwR_BnXvyJ2kOUYCBpWIn-kdPi_dLuF2xe7ta8OUNvcUDd8OShe1Dwqoe-0Dsk8c09H993aAmX22K0&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfhP--iRhKdesS2jfwq6P2feUoc-iP3JAN5Pb0iTqwm5Uw&oe=69226995",
      viewCount: "468K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/539719374_17944001412043873_5091132693120646077_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=111&ig_cache_key=MzcxMjQyMzA5OTU0MDU5MTA0MzE3OTQ0MDAxNDA5MDQzODcz.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=qAsnoh-lWm4Q7kNvwHfhDrw&_nc_oc=Adk1iMhOtNtqZ9fhGslZFrivLkvu6cOy0JQwt_WyrcOxGWXA2cJsUZQQ_Cgn7O114Mg1zS_6EXjoT5jp3N-PkIgJ&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfisvCgpphq0dME-MC95_Hf1M0lFcX7K7X6eJSHo4aSAdg&oe=69227814",
      viewCount: "2.3M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/567501375_1523976815462358_4458607366081218056_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=Mzc0NjA5NDYxNDE5NDYxMjY5Ng%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=xZ-LH13PO0wQ7kNvwGCRLd1&_nc_oc=AdmcdMF8306F-YzXASCZBzi5x457pkOJ2ZqyFdVWiMTWuZ0ZOXeCaeWx5eRtLhlxv3T6Gvj98exyHA1Vv1Ze9W7m&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfgSwq9jbc0SqvYyc12_DAA0tOb-4fzthGFmvxVcLK4i3A&oe=692270AC",
      viewCount: "56K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/548690111_17850691434551698_3855243272911745929_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=MzcyMjIyMjg0NzY2NzQzMzc2NjE3ODUwNjkxNDI4NTUxNjk4.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=QlirxkpFMdgQ7kNvwE-6S7i&_nc_oc=Adkt64uIqTHc6dLzWDOM0C9U-jx__3QTVPqZy05NrsZjpGl02ZoCetL8r3uo5UiCAnuMcqmiLXkLNveoqKYkX-ML&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfjcQLng8Bna_oKO9OJsD2W0l287uTmrK9i8bS5SmOmYew&oe=69229843",
      viewCount: "23M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/539251667_3624442861185024_368439154957610775_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=106&ig_cache_key=MzcwNjMwNzE5Mjg5OTYzODk2OQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=412oVsyJdpsQ7kNvwG0ZWPq&_nc_oc=AdnTGBOQNWJ91ZbBwk7GoiPE9z-N_PpdUITGurQLtRR4beYd5D-92K4YzKc0V0Lxm0XFGFjAL2Dy4_lieABhN_lk&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_Afi6Jc8vclJtoOblXECPo22SmmVrBk_pA58G36rqrwFhtw&oe=69226765",
      viewCount: "98K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/562139157_17872973406437130_57812129180277908_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc0MDk1Njg3MjcwMzk2NDA1MTE3ODcyOTczNDAwNDM3MTMw.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=WYW2ALxoTUUQ7kNvwGvdtXj&_nc_oc=AdkmXzAng2c56C88CaJIlXvr5j2I0AvL6qBZScNHhIHd28YHfy99J32jz7hcnr6jky1nQDV08nezpW8M8i3dV0wH&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfjSCRtQ1DU_RV437SSMZN_mPe4PDgldii6htQJ1xeYiaQ&oe=69228B86",
      viewCount: "1222",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/572554212_2001988980655873_8365199054554938998_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1NjM1NjMwMDc3NjQwMTM0MQ%3D%3D.3-ccb7-5&ccb=7-5&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=l2hNYT-ynJsQ7kNvwFeTSIa&_nc_oc=AdnYXx5eHodM_2edIGuzmCsyDAhvqMNLiSnJ4enTHQ8eIsTampVWY4J9YiDvfpIQImrwKNGLczZ7o-Zj5et3rCbI&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfhDEe2mxdOtxFnP9Zw4Igfi2Othe179edThHiUNoValjw&oe=69228851",
      viewCount: "434",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/537721655_18397281331189877_564842412277147611_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=MzcwNjEzNzEzNDY3ODU1NTM4NA%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=4GCgK4ppJkcQ7kNvwGkxZjs&_nc_oc=Adkdl3NrV5Mr5REEPOYcIcf2app89NYveGQHEFdZ-tMBhlaI-lw14_cCZ-GkNJ9dkSuNxRdXs8CdspFLiKHlv8a_&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_Afiify9onIy5lF-YYxgQXvV4QJUcBKFrr8svSbmx1HzPQA&oe=69226CFC",
      viewCount: "889",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/541597195_17877457233401295_8974184878415780998_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=106&ig_cache_key=MzcxNjQzNDM5NjYzNjQ2MzQzMg%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQwOHg3MjYuc2RyLkMzIn0%3D&_nc_ohc=wYMqFyfkwfwQ7kNvwG-Y_4M&_nc_oc=Adnv6HDuER9t9d9J6cNmFliTACntLKybwYGpwtt7HrLK3e_JClS2JYA-TRZb5PaeBPoXmUK3LBSCxSU7E2-3LWKM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_Afg09v1nBG2705n4B_1sC9Sala8jNiMB71EHAABqsncm9w&oe=69227232",
      viewCount: "78",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/572832292_17943299670078348_2159755056479994423_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=105&ig_cache_key=Mzc1NTU1NDU0NzcwNTMxMDI5OTE3OTQzMjk5NjY0MDc4MzQ4.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=-XgpB0G7AcQQ7kNvwF-euMf&_nc_oc=AdmXsYOkvIxtWE20HTN6FYkJ2OFs9-in-BiNk9VMrmeIOetZ2AZF86gftqPxUHGJsFVBEwrjvS3fx0yYR7NVSkjR&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_Afjf46Z_GKF7xR9pWC2Brwa13Iim2phR9Nfshazlh7fjHA&oe=692293CC",
      viewCount: "24M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/566385426_1182263637081149_7926366714277390460_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=Mzc0NjE1MjE0MTk1OTcyMDc1OQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=wGdS-tJygx4Q7kNvwERYOzL&_nc_oc=AdmGR2Wu5f8HfDQSDJD6uFehp3rqyBBqg7hj59gkdfPA1g1dYxkO4AbMUSlngN0vZyRk_vi6z6s_Mb-bRn4r4XIc&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_Afj7aXj0FgswQdis0uS4x7MqzRII_bPeObzLUCFAJ4zSxw&oe=69228DED",
      viewCount: "888K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/542368664_17958445989003727_2678993844045354146_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=MzcxMzU2MTQzMDYyNTY2OTY1MjE3OTU4NDQ1OTgzMDAzNzI3.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=J6uFHGUzrJoQ7kNvwFj8oiv&_nc_oc=AdkbuhU2RE5mFXpIEvatO-7uIrXdbyQf2N7Mn0M8LYV_KUdRDZYpx-2qGnnxf-h-cQdCrix8nuOm_EFuBI4pOiSt&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfhB7XqCpqDjvhTgoC-I3m8zZmEecIFg6rAmwvME0QsF4w&oe=692277ED",
      viewCount: "454M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/573320124_18079153571470382_2991967562324566259_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1NDMwNzY5NDU2NTEzMDU3MTE4MDc5MTUzNTY4NDcwMzgy.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=615LKbdUyLwQ7kNvwEgjFOj&_nc_oc=AdkNAOQYuF5ZCTfaX9q6NiefsuVSPihF4YEPi_uVJ2bD537R4whJhEzcZRMtIeCH3mCcX4vaiv__rfe_cj7t9fJP&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfjE9LzZfdtxX9qkQtXyWuQ738z6hxabrHmHfhpv_W07Pg&oe=69229CFB",
      viewCount: "64M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/538975112_17875009734404248_4045784809265180884_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=MzcwNzE2NDAyODc2MDkyNjAyOTE3ODc1MDA5NzI4NDA0MjQ4.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=hJ4ZheCI_9UQ7kNvwESViL_&_nc_oc=AdnGLVLTCLwWq-yQyEoqOsicWK_yYIfNrm_AUSqZI3hjfoBSpFCAPKUr5plSZFScNaEeX5t4lekLVMuViG7ES4D1&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfgKsVi2wkGemCbhbT6aOTZmYv5u4RZvzKDo6biDKvj8sw&oe=692289D7",
      viewCount: "212",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/566778259_775644085293595_3854814927214615087_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=100&ig_cache_key=Mzc0NjEzOTM3MjI3NTE5MTE4Mg%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=tIoMTuES7PQQ7kNvwG9nb2Q&_nc_oc=AdmtUioU8Py5Szyyurqqpho44IFPK1cUPY9ooESMXR-IXOIrTwTnbVaxdvOhg60bwu10oWt0sRTvI_K55S1KKswm&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=P-gaSK56j0i7QB0Wcf9vQQ&oh=00_AfhW3gPd1rWRshyDsNlTxbrMXRv5RZVNFpHhqPucmiRmaA&oe=69227EB3",
      viewCount: "4567",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/566130647_17914463577212510_340577997222869510_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=105&ig_cache_key=Mzc0NDU4MTEzNjI3OTY1OTIxNA%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=Qvzw3nX01oAQ7kNvwFpjU4d&_nc_oc=Adm1qkW-CaCxEoXdKPexuMQjKGrc5fgCoQf4xgtBjgEdcgRfJkM5I3S1M5vMuLzNivid1Z9MgkgMkUOx2qnImJzl&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=3PUsb3E8nA3F2UXDwbw8rw&oh=00_AfimDNydLheDs-rRZodMz06Ohudjxsn5fcKznaYgYqQSAg&oe=69229A40",
      viewCount: "88M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/565429206_18344538901207302_2714320332280793612_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1MzE4NDg0MDA1MDEzMjQ3MDE4MzQ0NTM4ODk4MjA3MzAy.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=Tbw72m9C6tYQ7kNvwGWZm3n&_nc_oc=AdnGq3qX1EY7JzXJyKEht5dazEHkGaZTYKOjNLyGElHYx1sX5SPPX9EJ5q7p1s7t3Y6tPTvXC0eGkqKS9Gwy0J9o&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=TT3LUcQF7dK5btGkCczEXQ&oh=00_AfjWtpTQybELt5XyAO5HH6ml21zppx6d2vJ2juKkflwMtQ&oe=692281C2",
      viewCount: "233K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/541963661_17914078158187920_615550951974117487_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=110&ig_cache_key=MzcxNDYwNzE5NjIyMzM3NDcyNTE3OTE0MDc4MTUyMTg3OTIw.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=-gnhBHdW1ScQ7kNvwEFXtxP&_nc_oc=Adl-CfUCL7qf8MAZ2ZFDptjmvahFr4P9C7SOMh1MaoaviEQeczyyG-VoXgNn29m2H_96f-tfVgSOLHC5DmYVXVkm&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=TT3LUcQF7dK5btGkCczEXQ&oh=00_Afi4exENBfUNG4KtEAkljvbNqnxc4zIlc_abYAce3WEOXw&oe=69227D59",
      viewCount: "898K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/550837667_17900624931299370_4137291951224450411_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=107&ig_cache_key=MzcyMzYwODMyOTU0MTUxMzYxMTE3OTAwNjI0OTI1Mjk5Mzcw.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=zItffNtxBNgQ7kNvwG8kOin&_nc_oc=AdmbikgpdW2Fo8U_UaYalEN7qwk9w_uSCzUbsiYz7qAHGI0tdOzKniJHgCsWBtvyLpZvqwuo2MAQJWAWvhoSSYNI&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=TT3LUcQF7dK5btGkCczEXQ&oh=00_Afjz1EXo1NtTsDo2_h21b1LxIjvysRB3Sz8D1ty-6Zmt2Q&oe=69227AD5",
      viewCount: "987K",
    ),
  ];

  List tabs = [
    AppImages.icGrid,
    AppImages.icReelsOut,
    AppImages.icUserComment,
  ];

  @override
  void onInit() {
    super.onInit();
  }
}