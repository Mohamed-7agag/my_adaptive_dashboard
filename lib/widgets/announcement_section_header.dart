import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';

class AnnouncementSectionHeader extends StatelessWidget {
  const AnnouncementSectionHeader({super.key, this.isUpcomeingSection = false});
  final bool isUpcomeingSection;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(isUpcomeingSection ? 'Upcoming Schedule' : 'Announcements',
            style: AppStyle.poppinsMedium18(context)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xffE0E0E0)),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Text(
                AdaptiveLayout.isMobile(context)
                    ? 'Today'
                    : 'Today, 13 Sep 2021',
                style: AppStyle.robotoRegular12(context),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xffB2B2B2),
              )
            ],
          ),
        )
      ],
    );
  }
}
