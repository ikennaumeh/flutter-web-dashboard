import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/views/large_screen_view.dart';
import 'package:flutter_web_dashboard/views/side_menu_view.dart';
import 'package:flutter_web_dashboard/views/small_screen_view.dart';
import 'package:flutter_web_dashboard/views/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
   SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: topNavBar(context, _scaffoldKey),
      extendBodyBehindAppBar: true,
      body: const ResponsiveWidget(largeScreen: LargeScreenView(), smallScreen: SmallScreenView()),
      drawer: const Drawer(
        child: SideMenuView(),
      ),
    );
  }
}
