import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer_header.dart';
import 'package:my_adaptive_dashboard/widgets/main_menu_section.dart';
import 'package:my_adaptive_dashboard/widgets/other_menu_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        color: const Color(0xffFAFAFA),
        child: const CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CustomDrawerHeader(),
                  SizedBox(height: 40),
                  MainMenuSection(),
                  SizedBox(height: 40),
                  OtherMenuSection(),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ));
  }
}
