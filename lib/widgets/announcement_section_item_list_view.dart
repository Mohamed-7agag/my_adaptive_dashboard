import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/models/announcement_item_model.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section_item.dart';

class AnnouncementSectionItemListView extends StatelessWidget {
  const AnnouncementSectionItemListView({super.key, this.isUpcoming = false});
  final bool isUpcoming;
  static const List<AnnouncementItemModel> items = [
    AnnouncementItemModel(
      title: 'Outing schedule for every departement',
      subTitle: '5 Minutes ago',
    ),
    AnnouncementItemModel(
      title: 'Meeting HR Department',
      subTitle: 'Yesterday, 12:30 PM',
    ),
    AnnouncementItemModel(
      title: 'IT Department need two more talents for UX/UI Designer position',
      subTitle: 'Yesterday, 09:15 AM',
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
                  isUpcomingSection: isUpcoming,
                ),
              ))
          .toList(),
    );
  }
}
