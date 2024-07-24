import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer_header.dart';
import 'package:my_adaptive_dashboard/widgets/tablet_main_menu.dart';
import 'package:my_adaptive_dashboard/widgets/tablet_other_menu_section.dart';

class CustomTabletDrawer extends StatelessWidget {
  const CustomTabletDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffFAFAFA),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  CustomDrawerHeader(
                    style: AppStyle.poppinsSemiBold20(context),
                  ),
                  const SizedBox(height: 30),
                  const TabletMainMenuSection(),
                  const SizedBox(height: 20),
                  const TabletOtherMenuSection(),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ));
  }
}
