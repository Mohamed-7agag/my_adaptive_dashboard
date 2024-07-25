import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_and_desktop_app_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              CustomTabletAndDesktopAppBar(),
            ],
          ),
        ),
      ],
    );
  }
}
