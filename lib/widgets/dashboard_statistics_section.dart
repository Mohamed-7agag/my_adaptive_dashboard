import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/dashboard_statistics_item_model.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_statistics_item.dart';

class DashboardStatisticsSection extends StatelessWidget {
  const DashboardStatisticsSection({super.key});

  static const List<DashboardStatisticsItemModel> items = [
    DashboardStatisticsItemModel(
      title: 'Total Employees',
      amount: '216',
      mensCount: '120 Men',
      womensCount: '96 Women',
    ),
    DashboardStatisticsItemModel(
      title: 'Talent Request',
      amount: '16',
      mensCount: '6 Men',
      womensCount: '10 Women',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout.isMobile(context)
        ? Column(
            children: [
              DashboardStatisticsItem(item: items[0]),
              const SizedBox(height: 16),
              DashboardStatisticsItem(item: items[1]),
            ],
          )
        : Row(
            children: [
              Expanded(child: DashboardStatisticsItem(item: items[0])),
              const SizedBox(width: 14),
              Expanded(child: DashboardStatisticsItem(item: items[1])),
            ],
          );
  }
}
