import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/drawer_item.dart';

class OtherMenuSection extends StatelessWidget {
  const OtherMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'OTHER',
              style: AppStyle.robotoMedium12(context),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const DrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Support',
            image: Assets.imagesSupport,
          ),
          isActive: false,
        ),
        const DrawerItem(
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
