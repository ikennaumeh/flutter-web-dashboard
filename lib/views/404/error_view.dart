import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/error.png", width: 350,),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: "Page Not Found", weight: FontWeight.bold,),
          ],
        )
      ],
    );
  }
}
