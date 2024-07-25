import 'package:flutter/material.dart';

class DashboardItemModel {
  final String title, number, subTitle;
  final Color backgroundColor,subTitleColor;

  const DashboardItemModel({
    required this.title,
    required this.number,
    required this.subTitle,
    required this.backgroundColor,
    required this.subTitleColor
  });
}
