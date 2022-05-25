import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key){
  return AppBar(
    elevation: 0,
    leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 14),
          child: Image.asset("assets/icons/logo.png"),
        )
      ],
    ) : IconButton(
      onPressed: () => key.currentState?.openDrawer(),
      icon: const Icon(Icons.menu),
    ),
    title: Row(
      children: [
        Visibility(

            child: CustomText(
              text: 'Dash', color: lightGrey, size: 20, weight: FontWeight.bold,
            )),
        const Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: dark.withOpacity(.7),)),
        Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: (){},
            ),
            Positioned(
              top: 7,
                right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: light, width: 2)
                ),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(text: 'Ikenna Umeh', color: lightGrey,),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: CircleAvatar(
            backgroundColor: light,
            child: Icon(Icons.person_outline, color: dark,),
          ),
        )
      ],
    ),
    iconTheme: IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
  );
}