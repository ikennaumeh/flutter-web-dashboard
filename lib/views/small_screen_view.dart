import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';

class SmallScreenView extends StatelessWidget {
  const SmallScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: localNavigator(),
    );
  }
}
