import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key, this.style});
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      'WeHR',
      style: style ?? AppStyle.poppinsSemiBold36(context),
    );
  }
}
