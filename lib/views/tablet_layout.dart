import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_and_desktop_app_bar.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_drawer.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomTabletDrawer()),
        Expanded(
          flex: 9,
          child: Column(
            children: [
              CustomTabletAndDesktopAppBar(),
              SizedBox(height: 21),
              Row(
                children: [
                  SizedBox(width: 40),
                  Expanded(child: DashboardSection()),
                  SizedBox(width: 40),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
