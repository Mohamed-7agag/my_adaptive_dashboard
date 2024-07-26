import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_statistics_section.dart';

class DashboardAndAnnouncementSection extends StatelessWidget {
  const DashboardAndAnnouncementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DashboardSection(),
        SizedBox(height: 20),
        DashboardStatisticsSection(),
        SizedBox(height: 20),
        AnnouncementSection(),
        SizedBox(height: 20),
      ],
    );
  }
}
