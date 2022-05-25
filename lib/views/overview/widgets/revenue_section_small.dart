import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/views/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(text: '"Revenue Chart', size: 20, weight: FontWeight.bold, color: lightGrey,),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),

              ],
            ),

          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
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
