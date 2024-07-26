import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/recently_activity_section.dart';
import 'package:my_adaptive_dashboard/widgets/upcoming_schedule_section.dart';

class RecentlyActivityAndUpcomingScheduleSection extends StatelessWidget {
  const RecentlyActivityAndUpcomingScheduleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        RecentlyActivitySection(),
        SizedBox(height: 20),
        UpcomingScheduleSection()
      ],
    );
  }
}
