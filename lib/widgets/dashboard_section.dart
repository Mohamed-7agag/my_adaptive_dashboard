import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/widgets/dashboard_item_list_view.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dashboard',
          style: AppStyle.poppinsMedium24(context)
              .copyWith(color: const Color(0xff161E54)),
        ),
        const SizedBox(height: 12),
        const DashboardItemListView()
      ],
    );
  }
}
