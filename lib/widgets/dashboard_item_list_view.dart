import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/dashboard_item_model.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_item.dart';

class DashboardItemListView extends StatelessWidget {
  const DashboardItemListView({super.key});

  static const List<DashboardItemModel> dashboardItems = [
    DashboardItemModel(
      title: 'Available Position',
      backgroundColor: Color(0xffFFEFE7),
      subTitleColor: Color(0xffFF5151),
      number: '24',
      subTitle: '4 Urgently needed',
    ),
    DashboardItemModel(
      title: 'Job Open',
      backgroundColor: Color(0xffE8F0FB),
      subTitleColor: Color(0xff3786F1),
      number: '10',
      subTitle: '4 Active hiring',
    ),
    DashboardItemModel(
      title: 'New Employees',
      backgroundColor: Color(0xffFDEBF9),
      subTitleColor: Color(0xffEE61CF),
      number: '36',
      subTitle: '4 Department',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout.isMobile(context) ? Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DashboardItem(dashboardItemModel: dashboardItems[0]),
        const SizedBox(height: 14),
        DashboardItem(dashboardItemModel: dashboardItems[1]),
        const SizedBox(height: 14),
        DashboardItem(dashboardItemModel: dashboardItems[2]),
      ],
    ) :  Row(
      children: [
        Expanded(child: DashboardItem(dashboardItemModel: dashboardItems[0])),
        const SizedBox(width: 14),
        Expanded(child: DashboardItem(dashboardItemModel: dashboardItems[1])),
        const SizedBox(width: 14),
        Expanded(child: DashboardItem(dashboardItemModel: dashboardItems[2])),
      ],
    );
  }
}
