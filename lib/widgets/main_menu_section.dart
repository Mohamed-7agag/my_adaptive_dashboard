import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/drawer_items_list_view.dart';

class MainMenuSection extends StatelessWidget {
  const MainMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'MAIN MENU',
              style: AppStyle.robotoMedium12(context),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const DrawerItemsListView(),
      ],
    );
  }
}
