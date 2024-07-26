import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/announcement_section_header.dart';
import 'package:my_adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:my_adaptive_dashboard/widgets/upcoming_schedule_section_list_view.dart';

class UpcomingScheduleSection extends StatelessWidget {
  const UpcomingScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnnouncementSectionHeader(
                  isUpcomeingSection: true,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: UpcomingScheduleSectionListView(),
              ),
            ],
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 9),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xffE0E0E0))),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                'Creat a New Schedule',
                style: AppStyle.poppinsMedium14(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
