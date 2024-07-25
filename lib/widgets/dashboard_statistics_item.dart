import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_adaptive_dashboard/models/dashboard_statistics_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/custom_background_container.dart';

class DashboardStatisticsItem extends StatelessWidget {
  const DashboardStatisticsItem({super.key, required this.item});
  final DashboardStatisticsItemModel item;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: AppStyle.poppinsMedium18(context),
              ),
              const SizedBox(height: 18),
              Text(
                item.amount,
                style: AppStyle.poppinsMedium48(context),
              ),
              const SizedBox(height: 26),
              Text(
                item.mensCount,
                style: AppStyle.robotoRegular12(context),
              ),
              const SizedBox(height: 4),
              Text(
                item.womensCount,
                style: AppStyle.robotoRegular12(context),
              ),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(Assets.imagesStatistics),
              const SizedBox(height: 18),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xffFFEFE7),
                ),
                child: Text(
                  '+2% Past month',
                  style: AppStyle.robotoRegular12(context),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
