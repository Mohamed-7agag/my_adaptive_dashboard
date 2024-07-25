import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          DashboardSection(),
        ],
      ),
    );
  }
}
