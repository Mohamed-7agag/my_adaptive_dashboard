import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/views/tablet_layout.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
