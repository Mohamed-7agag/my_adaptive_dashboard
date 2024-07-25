import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_statistics_section.dart';
import 'package:my_adaptive_dashboard/widgets/recently_activity_section.dart';
import 'package:my_adaptive_dashboard/widgets/upcoming_schedule_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            DashboardSection(),
            SizedBox(height: 16),
            DashboardStatisticsSection(),
            SizedBox(height: 20),
            AnnouncementSection(),
            SizedBox(height: 20),
            RecentlyActivitySection(),
            SizedBox(height: 20),
            UpcomingScheduleSection(),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
