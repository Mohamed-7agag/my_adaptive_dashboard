import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/announcement_item_model.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section_item.dart';

class UpcomingScheduleSectionListView extends StatelessWidget {
  const UpcomingScheduleSectionListView({super.key});
  static const List<AnnouncementItemModel> items = [
    AnnouncementItemModel(
      title: 'Review candidate applications',
      subTitle: 'Today - 11.30 AM',
    ),
    AnnouncementItemModel(
      title: 'Interview with candidates',
      subTitle: 'Today - 10.30 AM',
    ),
    AnnouncementItemModel(
      title: 'Short meeting with product designer from IT Departement',
      subTitle: 'Today - 09.15 AM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: AnnouncementSectionItem(
                  item: item,
                  isUpcomingSection: true,
                ),
              ))
          .toList(),
    );
  }
}
