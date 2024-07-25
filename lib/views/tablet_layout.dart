import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_and_desktop_app_bar.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_drawer.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_statistics_section.dart';
import 'package:my_adaptive_dashboard/widgets/recently_activity_section.dart';
import 'package:my_adaptive_dashboard/widgets/upcoming_schedule_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomTabletDrawer()),
        Expanded(
            flex: 9,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      CustomTabletAndDesktopAppBar(),
                      SizedBox(height: 21),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Expanded(
                              child: Column(
                            children: [
                              DashboardSection(),
                              SizedBox(height: 20),
                              DashboardStatisticsSection(),
                              SizedBox(height: 20),
                              AnnouncementSection(),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: RecentlyActivitySection()),
                                  SizedBox(width: 16),
                                  Expanded(
                                      flex: 5,
                                      child: UpcomingScheduleSection()),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          )),
                          SizedBox(width: 40),
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
