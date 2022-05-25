import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/availabe_drivers.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/revenue_section_large.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/revenue_section_small.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverviewCardMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                const OverviewCardSmallScreen(),

              if(!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),

              const AvailableDrivers(),
            ],
          ),
        ),
      ],
    );
  }
}
