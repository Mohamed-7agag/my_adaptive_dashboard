import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/drawer_items_list_view.dart';

class TabletMainMenuSection extends StatelessWidget {
  const TabletMainMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'MAIN MENU',
          style: AppStyle.robotoMedium10(context),
        ),
        const SizedBox(height: 20),
        const DrawerItemsListView(),
      ],
    );
  }
}
