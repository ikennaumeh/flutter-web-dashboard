import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/views/clients/widgets/clients_table.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(children: [
          Container(
            margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
            child: CustomText(
              text: menuController.activeItem.value,
              size: 24,
              weight: FontWeight.bold,
            ),
          ),
        ],),),
        Expanded(
          child: ListView(
            children: [
              ClientsTable()
            ],
          ),
        )
      ],
    );
  }
}
