import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/dashboard_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key, required this.dashboardItemModel});
  final DashboardItemModel dashboardItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14).copyWith(left: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: dashboardItemModel.backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dashboardItemModel.title,
            style: AppStyle.poppinsMedium18(context),
          ),
          const SizedBox(height: 12),
          Text(
            dashboardItemModel.number,
            style: AppStyle.poppinsMedium36(context),
          ),
          const SizedBox(height: 12),
          Text(
            dashboardItemModel.subTitle,
            style: AppStyle.robotoRegular16(context)
                .copyWith(color: dashboardItemModel.subTitleColor),
          ),
        ],
      ),
    );
  }
}
