import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_and_desktop_app_bar.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_and_announcement_section.dart';
import 'package:my_adaptive_dashboard/widgets/recently_activity_and_upcoming_schedule_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      CustomTabletAndDesktopAppBar(),
                      SizedBox(height: 21),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 36),
                          Expanded(
                            flex: 9,
                            child: DashboardAndAnnouncementSection(),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            flex: 5,
                            child: RecentlyActivityAndUpcomingScheduleSection(),
                          ),
                          SizedBox(width: 36)
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
