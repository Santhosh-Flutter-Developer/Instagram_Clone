
import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/search/models/search_grid_model.dart';

class SearchGridController extends GetxController{

  List searchGrid = [
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/550179450_17971683233948774_3369618211736319080_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08_tt6&_nc_cat=111&ig_cache_key=MzcyMzU0NzQ2Mjc4NDM3OTM4NjE3OTcxNjgzMjI3OTQ4Nzc0.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjEwODB4MTkyMC5zZHIuQzMifQ%3D%3D&_nc_ohc=mqbWG747_OQQ7kNvwGYd13L&_nc_oc=AdndDkJkVtiqJMy0DlhlRcAELFP7NtoM8GhV_qn2IN4SvDBwAAVGaSWR5LjX6lDQjYcAgfMRD8VIcq0cyFXEVBvl&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfhbhxxNVkaIjnLg6C3eMaVOdg9qXAzv3nkyUfH2UY10YQ&oe=691A6C66",
      viewCount: "1.4M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/573898175_2281243375633609_1623808874939230535_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1NzQ1NjQ1MjQ0NjYzNDU4MQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM4LnNkci5DMyJ9&_nc_ohc=K_PNzV_Oo1UQ7kNvwH13n2G&_nc_oc=AdnOeW8UcETyFFhh_RPcGJvssxwJK3KfrNrP7e15ss4s-RgVQ0ygRaYu_5yEmD-mMZEKmBRebmLx-pwVZM74-rFR&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfjlFt2UCC2SJY18otS0W8HRJoyxuOlwrnQHQLEQMCbKMA&oe=691A5B5A",
      viewCount: "468K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/540532586_17858323971490420_4876495361521164317_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=MzcxMDQ3MjAxMDEzMzc5MTIwMzE3ODU4MzIzOTY4NDkwNDIw.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=fua7_1ZlBdsQ7kNvwFOM2kB&_nc_oc=AdnhslkHsXwHbVz1iEyE03mXQ-BJ1XyrAfA17yJLaOw7n9ryI32lI0KENaDChAy7DsLIzIOA9uMxQe2mJbxMKHRp&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afi17Hz7KcWeT3z4ondn8PhPcXUxq4Ta_eqP2r_KCLBnAw&oe=691A3D24",
      viewCount: "2.3M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/572953600_807576088552831_8043453305672921867_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1MjkwMzIyMTExNjM1MzQxOQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=2iUu1h0jI9QQ7kNvwFV0YCs&_nc_oc=Adnud7INNpHsJYpnJkazazyLA7bAazPojN6tii5YlZHK7DCyKBZQYIyq0kIjwm65YbdtLNqnIKb96Ffj_3aKIDsp&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afj8WWRpndogXcaiUQzr1XgSlNlNU9giQWxfSmnkLl1Dsw&oe=691A565E",
      viewCount: "56K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/539421350_18400614424143782_5757546495867084245_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08_tt6&_nc_cat=106&ig_cache_key=MzcwNjYzNjY3ODAzNzI5Mzc1MDE4NDAwNjE0NDE4MTQzNzgy.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ1MzZ4ODA2NC5zZHIuQzMifQ%3D%3D&_nc_ohc=1BQGzr8dYeQQ7kNvwFQHPKa&_nc_oc=AdnOu-JRdEKYftxF842z3w3v1a7iRyjpR8J_AOVoOEijXYvgYfx5wvd3KxbNMv2Ezv83Qfg5MYO9fsMzUX449yjU&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afjf0K5CZOSH86N6sS6ndchp9wbUmyNn9fnejDhAzGilVg&oe=691A6CD7",
      viewCount: "23M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/565920827_17986847171900387_6160634723812100482_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc0NDQxODQzODgyMzU3MjU1OQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=xD3h8Vh-KDMQ7kNvwEsAKU8&_nc_oc=AdmyAYY_Y8Gs0imzfwOyFN-Jf6gDnR85HT3Fz_vGb3e0xxNpeUCzENFiPiM3R7VNEZsaXOAbjg1aOlz0npgPcGDm&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfjO1TtkHJrd5UlhGWgSf7lGF45sW5G4r-n7u05YKCXmiw&oe=691A3B16",
      viewCount: "98K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/565992041_18300430495269625_4837246623368035715_n.jpg?stp=dst-jpg_e15_p640x640_tt6&_nc_cat=1&ig_cache_key=Mzc0NDY2MjQzNzgwMzE1ODA4NDE4MzAwNDMwNDg5MjY5NjI1.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjcyMHgxMjgwLnNkci5DMyJ9&_nc_ohc=munnhV3DqbUQ7kNvwHKafX6&_nc_oc=AdmDf2omn2O5hz8s483_eJ50Yppx79W4jWUD8FNpyGzxBH76aVoYw1vVDhFgEsB-0QzJf7cJ3YxDHkZJkH9sm8ID&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfgJQp3iYSHEfRpgdXoahcBM5vwuvYZ7nYvsIDex4JKgPw&oe=691A4855",
      viewCount: "1222",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/572292764_17930332338110932_6410704386510359804_n.jpg?stp=dst-jpg_e15_p640x640_tt6&_nc_cat=106&ig_cache_key=Mzc1Njk3NzIyODU5Mjc5MjIxNTE3OTMwMzMyMzM1MTEwOTMy.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjcyMHgxMjgwLnNkci5DMyJ9&_nc_ohc=OCLZ2QlVlcEQ7kNvwHuCpxi&_nc_oc=Adl6vgO_s6B9-AIZqfPemV2fG7KC32dvmDfpfjgL1ym6c4CuQG9Y9KGpuB_FZxuqokde7cBZodLtnZwHcQbS4Gtp&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfghXOVy1rveb7sR0kpaW5nal6y7bcNXJAl_Jp00qHrFYA&oe=691A4D90",
      viewCount: "434",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/572899521_17900270229313149_7856665506842674414_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc1ODU1MzI0MDczNzkxMjQxMQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=B46Nz5-FJ7cQ7kNvwGpCw2_&_nc_oc=AdkuiJg2MaXOlPqtJJYQFXUmbG54uTwZnKjC_AevcQkVcUodY1Y12OchtOkIPUydG0uW5CuZnvgI0mHIgd3huLxd&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afg3I8XjEPL2OyQ3zcojeUIvKotDoliBOqjIwEpd4HM1og&oe=691A682D",
      viewCount: "889",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/573255287_1870030963867578_3368936546073622680_n.jpg?stp=dst-jpegr_e15_tt6&_nc_cat=100&ig_cache_key=Mzc1OTE1MzYyNjMxMzQ0MzUzOA%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2Lmhkci5DMyJ9&_nc_ohc=etKjgQ9U0P4Q7kNvwHPk0g-&_nc_oc=AdnU2jATiSVJZIMHYW2qnx7NuExBaIIlumJHMMu3NsPrEDSxMdblWuBqmOH2FsiF8h0ItBqJV9V5EseLHX_07Mev&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&se=-1&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfjDE2h5e249SKHhchTP1SwgEN6uFARIFleu5_j-cuuSMA&oe=691A6637",
      viewCount: "78",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/537246303_18215961589307199_3213177846816556045_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=101&ig_cache_key=MzcwNDMxNzMxNDQ3Nzk5MDk5MTE4MjE1OTYxNTg2MzA3MTk5.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=9GyFRjtTldgQ7kNvwGYbRyr&_nc_oc=AdndooAQm7CNGa57LAGQ6gB8SdC5fRImEF9iloPjrRDiJPiBHoro6r9p4nOxzJlCndtDYAYKddMY-Wf4Ucs8gtEi&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afi9aqST7T-Gg6hwoXvbA2GKRZ7RVfe5_gPKJPAYz6pkIg&oe=691A6EB1",
      viewCount: "24M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/549735957_783368787758393_5223442833213905499_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=MzcyNDA2NTI5NTAxMTIzNDE5NQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=j4TPZp-Uq5sQ7kNvwFks22f&_nc_oc=Adma5AOGpiJcMQNzTAGJ01yMonM36wR0qtSf7JypWVNXBs0jUjoVfFY8DKqY2iM1OW7QmmUDGRdwWrL-XRQae0bb&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfjtdtiGTe1yT6KotD9We47bjoqk0riRQm2qpJQyKrhaUQ&oe=691A6C4B",
      viewCount: "888K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/579681423_17970981470957256_4276956949828891924_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=1&ig_cache_key=Mzc2MDczOTk3NTMyMDE4NDg0NzE3OTcwOTgxNDY0OTU3MjU2.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=XVp7FaIwB5EQ7kNvwFXuboG&_nc_oc=AdnLseombqImBDyXuhTE_0kt_ZW1XVl-7BvhQFoGtWEcEQy8Vgp0qy4baNnXnSKfSVfj1GIP3f-J7O__lc35qHTM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfgMBvbvusKLy9cFXJtszjVJnqrp5tINniaNxMab3QifVA&oe=691A48DE",
      viewCount: "454M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/533415732_17856367236487577_8942750923464009912_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=110&ig_cache_key=MzcwMjM0NzQwMjgzODg1MTMzNg%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=_-js0XYSNncQ7kNvwHWNFq-&_nc_oc=AdnBHQU-MOeXp-1DIbU_iLqwURgCzs5bAPBBf_-oRSSW5MaY3kWzaVzKA-0SHOJoTIT_chK2AcPNOnAiO3PHmZFU&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afh1mcgLqXq2MTGOwrZbKZRHX9R4hk43S4nxLW7t8MnzuQ&oe=691A60C9",
      viewCount: "64M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/520594676_17916986463139472_4212319939941047777_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=106&ig_cache_key=MzY4MDkwMzY4NjgzMTYxMzE3ODE3OTE2OTg2NDU3MTM5NDcy.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=5hm9YoepEI8Q7kNvwGdahe4&_nc_oc=Adla3yx7Y9vvh8wgto6E3noQOMHz9NPbCXJq0COcM_d8aE6YRRlLCF3rfu4QhKfosvosNE1It1vJdA0yLmF7BA-_&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_Afji65oLMbJntnPgWJ3uhW372Rp1FsGZN18OMbBeBblo_A&oe=691A62EC",
      viewCount: "212",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/535567880_17916122646176493_637851851070260222_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=103&ig_cache_key=MzcwMzA1ODYyMDkxODYwNjkyNDE3OTE2MTIyNjQwMTc2NDkz.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjQ4MHg4NTQuc2RyLkMzIn0%3D&_nc_ohc=9pwH6iV7FYkQ7kNvwHhiFBk&_nc_oc=AdkBH6Mj67fAGfWfbjqaTD91mCVL-PtLlsxAb1qJTsubeaYGyLwHBi1M1FLWs8dnTK-cFrE9difTYvLbeisGo2Xg&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=PVtujSxRS2GbqQlLBq5ivQ&oh=00_AfiVMST3-H4XLQeUA8A9YRRGXpvpMnYGT6Q0FDBTwdyFPQ&oe=691A5C52",
      viewCount: "4567",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/541485028_786027894590316_1703530178693274643_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=104&ig_cache_key=MzcxMjExMzQyNTU3ODcxMDQ1Mg%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=VSAiPowjE5EQ7kNvwGcQXo3&_nc_oc=AdmIkb6hWFL48grfKI43OlaXR7cSIWdhg6_mOCflU-nCaD9M6AfWmlKCsfQig7jinZsKENNuMsIFRNMpXPFUY0hc&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=66KUpKXp6q3Yx9xTvURtRQ&oh=00_Afj0KruQAV5sQyzCs4cu4osSwVvLY2b-v7q7RWYkCyxq-g&oe=691A6F88",
      viewCount: "88M",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/534818583_4232819436989960_3297357413134405745_n.jpg?stp=dst-jpg_e15_tt6&_nc_cat=111&ig_cache_key=MzcwMTcyODU2NzY3NTE2NjcyMw%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=p8kafR1UqYsQ7kNvwEc02HX&_nc_oc=AdkrJrOKWs2LpWacAA05p9MMGgyV3W8OrUv_xAO2d8X2vpy6FQDsDgH9viH6uYi8BWJlg-CKKYrK3cMPNdTvRGIr&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=66KUpKXp6q3Yx9xTvURtRQ&oh=00_AfjD-Lee7pJqIayJWbLg0ZSawh0ajcPm8urVoCmSZM_lGQ&oe=691A5A12",
      viewCount: "233K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.71878-15/574244754_1532276718012358_6698420163980101324_n.jpg?stp=c0.248.640.640a_dst-jpg_e15_s150x150_tt6&_nc_cat=109&ig_cache_key=Mzc1ODk2OTkyMTczNzkyNjQ5NQ%3D%3D.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjY0MHgxMTM2LnNkci5DMyJ9&_nc_ohc=u63uvgFaih4Q7kNvwFo3Wsx&_nc_oc=AdkhJGiyTdmEFV9n1Zn41-CwzOc-foadyBMKSQ5mnX_AbJVxBYKTw9Zx-dUx-YiVnUi7uOZTGh-fAzAQqI7qbQ3K&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=QgOl1WIbqODO3CGQcIF0Nw&oh=00_AfiC6eIZ-44WUdTl6Gd5nueKsLAR3FXNgCWHR2BzAnSLpQ&oe=691A57D1",
      viewCount: "898K",
    ),
    SearchGridModel(
      tileUrl: "https://scontent.cdninstagram.com/v/t51.82787-15/532223033_17848575993539294_3905117861763533232_n.jpg?stp=c0.210.540.540a_dst-jpg_e15_s150x150_tt6&_nc_cat=109&ig_cache_key=MzY5OTU1MDc4MzAxNzU5MDM1MDE3ODQ4NTc1OTg3NTM5Mjk0.3-ccb1-7&ccb=1-7&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6InhwaWRzLjU0MHg5NjAuc2RyLkMzIn0%3D&_nc_ohc=ITSluQKoF2IQ7kNvwGMSjSz&_nc_oc=Adnp4ztLwI7HNFoHQ888zir4HiTb1Vmqu97HgB-apERoGX24FclXhyPCu2fWoVZI15rGP3dQALG4xjd7JNQoyo9M&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.cdninstagram.com&_nc_gid=QgOl1WIbqODO3CGQcIF0Nw&oh=00_AfhLsK_iv9JgxKH-c0YARYbNuXitAVny_8Nh1zclj3gl5w&oe=691A73C6",
      viewCount: "987K",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}