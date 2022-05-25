import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
          blurRadius: 12)
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue chart',
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 1, height: 120,
              color: lightGrey,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(title: "Today's revenue", amount: "13"),
                    RevenueInfo(title: "Last 7 days", amount: "120"),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    RevenueInfo(title: "Last 30 days", amount: "1,200"),
                    RevenueInfo(title: "Last 12 month", amount: "1,200"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
