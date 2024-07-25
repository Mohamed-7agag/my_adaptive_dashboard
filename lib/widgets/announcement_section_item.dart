import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_adaptive_dashboard/models/announcement_item_model.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class AnnouncementSectionItem extends StatelessWidget {
  const AnnouncementSectionItem({
    super.key,
    required this.item,
    this.isUpcomingSection = false,
  });
  final AnnouncementItemModel item;
  final bool isUpcomingSection;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xffFAFAFA),
        border: Border.all(color: const Color(0xffE0E0E0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppStyle.poppinsRegular16(context),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  item.subTitle,
                  style: AppStyle.robotoRegular10(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isUpcomingSection
                    ? const SizedBox.shrink()
                    : SvgPicture.asset(Assets.imagesPin),
                const SizedBox(width: 14),
                SvgPicture.asset(Assets.imagesMenu),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
