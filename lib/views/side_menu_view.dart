import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';

import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/views/auth/auth_view.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/side_menu_items.dart';

import 'package:get/get.dart';

class SideMenuView extends StatelessWidget {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width / 48),
                  Padding(padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )
                  ),

                  SizedBox(width: _width / 48,)
                ],
              ),


            ],
          ),


        Divider(color: lightGrey.withOpacity(.1),),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems.map((item) => SideMenuItem(
            itemName: item.name,
            onTap: (){
              if(item.route == authPageRoute){
                menuController.changeActiveItemTo(overViewPageDisplayName);
                Get.offAllNamed(authPageRoute);
              }

              if(!menuController.isActive(item.name)){
                menuController.changeActiveItemTo(item.name);
                if(ResponsiveWidget.isSmallScreen(context)) {
                  Get.back();
                }
                navigationController.navigateTo(item.route);
              }
            },
          )).toList(),
        )
      ],),

    );
  }
}