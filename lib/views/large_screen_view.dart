import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';
import 'package:flutter_web_dashboard/views/side_menu_view.dart';

class LargeScreenView extends StatelessWidget {
  const LargeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          fit: FlexFit.loose,
          child: SideMenuView(),
        ),
        Expanded(
          flex: 5,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator()),
        ),
      ],
    );
  }
}
