import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/tablet_drawer_item.dart';

class TabletOtherMenuSection extends StatelessWidget {
  const TabletOtherMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OTHER',
          style: AppStyle.robotoMedium10(context),
        ),
        const SizedBox(height: 20),
        const TabletDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Support',
            image: Assets.imagesSupport,
          ),
          isActive: false,
        ),
        const TabletDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Settings',
            image: Assets.imagesSetting,
          ),
          isActive: false,
        ),
      ],
    );
  }
}
