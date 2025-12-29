import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/core/utils/route_observer.dart';
import 'package:instagram_clone/presentation/pages/login/view/login.dart';

void main() async{
   await ScreenUtil.ensureScreenSize();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
    ]);
  runApp(const MyApp());
}

final CustomRouteObserver customRouteObserver = CustomRouteObserver();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder:(context,child)=> GetMaterialApp(
        title: 'Instagram',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        navigatorObservers: [customRouteObserver],
        theme: ThemeData(
              useMaterial3: false,
              textTheme: kAppTextTheme,
              tooltipTheme: kAppTooltipTheme,
              appBarTheme: kAppBarTheme,
            ),
        darkTheme:  ThemeData(
              useMaterial3: false,
              textTheme: kAppTextTheme,
              tooltipTheme: kAppTooltipTheme,
              scaffoldBackgroundColor: kDarkBackground,
              appBarTheme: kAppBarTheme,
            ),   
            builder: (ctx, child) {
              var mediaQuery = MediaQuery.of(ctx);
              return MediaQuery(
                data: mediaQuery.copyWith(
                  textScaler: TextScaler.noScaling,
                ),
                child: child!,
              );
            },
            home: child,
            
      ),
      child: Login(),
    );
  }
}

