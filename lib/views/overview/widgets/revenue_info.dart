import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';

class RevenueInfo extends StatelessWidget {

  final String title, amount;
  const RevenueInfo({Key? key,required this.title,required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "$title \n\n",
            style: TextStyle(
              color: lightGrey, fontSize: 16,
            )
          )  ,
          TextSpan(
            text: "\$ $amount ",
            style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold
            )
          )
        ]
      ),

      ),
    );
  }
}
