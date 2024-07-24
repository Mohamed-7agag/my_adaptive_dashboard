import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';

class TabletDrawerItem extends StatelessWidget {
  const TabletDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36),
      child: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: ColorFilter.mode(
          isActive ? const Color(0xffFF5151) : const Color(0xffB2B2B2),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
