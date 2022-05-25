import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';
import 'package:flutter_web_dashboard/controllers/menu_controller.dart';
import 'package:flutter_web_dashboard/controllers/navigation_controller.dart';
import 'package:flutter_web_dashboard/layout.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/views/404/error_view.dart';
import 'package:flutter_web_dashboard/views/auth/auth_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authPageRoute,
      unknownRoute: GetPage(name: "/not-found", page: () => const PageNotFound(), transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(name: authPageRoute, page: () => const AuthView()),
      ],
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }
        )
      ),
    );
  }
}


