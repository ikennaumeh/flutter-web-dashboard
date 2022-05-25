import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/info_card_small.dart';

class OverviewCardSmallScreen extends StatelessWidget {
  const OverviewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width ;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: "Rider in progress",
              value: '7',
              isActive: true,
              topColor: Colors.orange,
              onTap: () {}),
          SizedBox(height: _width / 64,),
          InfoCardSmall(
              title: "Package delivered",
              value: '7',
              topColor: Colors.orange,
              onTap: () {}),
          SizedBox(height: _width / 64,),
          InfoCardSmall(
              title: "Package delivered",
              value: '7',
              topColor: Colors.orange,
              onTap: () {}),
          SizedBox(height: _width / 64,),
          InfoCardSmall(
              title: "Package delivered",
              value: '7',
              topColor: Colors.orange,
              onTap: () {}),

        ],
      ),
    );
  }
}
