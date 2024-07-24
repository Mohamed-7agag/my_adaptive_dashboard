import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';
import 'package:my_adaptive_dashboard/widgets/drawer_item.dart';
import 'package:my_adaptive_dashboard/widgets/tablet_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'Recruitment',
      image: Assets.imagesRecruitment,
    ),
    DrawerItemModel(
      title: 'Schedule',
      image: Assets.imagesSchedule,
    ),
    DrawerItemModel(
      title: 'Employee',
      image: Assets.imagesEmployee,
    ),
    DrawerItemModel(
      title: 'Department',
      image: Assets.imagesDepartment,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems
          .asMap()
          .entries
          .map((e) => GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = e.key;
                });
              },
              child: AdaptiveLayout.isTablet(context)
                  ? TabletDrawerItem(
                      drawerItemModel: e.value, isActive: activeIndex == e.key)
                  : DrawerItem(
                      drawerItemModel: e.value,
                      isActive: activeIndex == e.key,
                    )))
          .toList(),
    );
  }
}
