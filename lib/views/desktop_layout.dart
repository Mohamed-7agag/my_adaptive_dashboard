import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_and_desktop_app_bar.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_statistics_section.dart';
import 'package:my_adaptive_dashboard/widgets/recently_activity_section.dart';
import 'package:my_adaptive_dashboard/widgets/upcoming_schedule_section.dart';

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
                            child: Column(
                              children: [
                                DashboardSection(),
                                SizedBox(height: 20),
                                DashboardStatisticsSection(),
                                SizedBox(height: 20),
                                AnnouncementSection(),
                                SizedBox(height: 20),

                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                SizedBox(height: 40),
                                RecentlyActivitySection(),
                                SizedBox(height: 20),

                                UpcomingScheduleSection()
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 36,
                          )
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
