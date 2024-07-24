import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 30),
      leading: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: ColorFilter.mode(
          isActive ? const Color(0xffFF5151) : const Color(0xffB2B2B2),
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        drawerItemModel.title,
        style: isActive
            ? AppStyle.poppinsMedium16(context)
            : AppStyle.poppinsRegular16(context),
      ),
    );
  }
}
