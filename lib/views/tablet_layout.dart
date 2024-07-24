import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/custom_tablet_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomTabletDrawer()),
        Expanded(flex: 9, child: SizedBox()),
      ],
    );
  }
}
