import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';
import 'package:my_adaptive_dashboard/views/dashboard_view.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';
import 'package:my_adaptive_dashboard/widgets/app_bar_text_field.dart';

class CustomTabletAndDesktopAppBar extends StatelessWidget {
  const CustomTabletAndDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
                color: Color.fromARGB(255, 236, 236, 236), width: 0.6)),
      ),
      padding: const EdgeInsets.only(top: 12, right: 40, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                AdaptiveLayout.isDesktop(context)
                    ? const SizedBox(width: 4)
                    : IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Color(0xffB2B2B2),
                        ),
                      ),
                const SizedBox(width: 12),
                const Expanded(child: AppBarTextField())
              ],
            ),
          ),
          const Spacer(),
          const Expanded(
            flex: 3,
            child: TabletAndDesktopAppBarActions(),
          ),
        ],
      ),
    );
  }
}

class TabletAndDesktopAppBarActions extends StatelessWidget {
  const TabletAndDesktopAppBarActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: appBarActions
          .asMap()
          .entries
          .map((e) => e.key == 5 && AdaptiveLayout.isDesktop(context)
              ? Row(
                  children: [
                    e.value,
                    const SizedBox(width: 8),
                    Text(
                      'Admirra John',
                      style: AppStyle.poppinsMedium16(context)
                          .copyWith(color: const Color(0xff161E54)),
                    ),
                    const SizedBox(width: 5)
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: e.value,
                ))
          .toList(),
    );
  }
}
