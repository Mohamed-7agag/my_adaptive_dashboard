import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_adaptive_dashboard/utils/app_images.dart';
import 'package:my_adaptive_dashboard/views/tablet_layout.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';
import 'package:my_adaptive_dashboard/widgets/custom_drawer.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AdaptiveLayout.isMobile(context)
          ? AppBar(
              backgroundColor: const Color(0xffffffff),
              foregroundColor: const Color(0xffB2B2B2),
              shadowColor: Colors.white,
              elevation: 0.35,
              automaticallyImplyLeading: false,
              titleSpacing: 4,
              title: AppBarLeading(scaffoldKey: scaffoldKey),
              actions: appBarActions,
            )
          : null,
      drawer: AdaptiveLayout.isMobile(context) ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffffffff),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}

List<Widget> appBarActions = [
  SvgPicture.asset(
    Assets.imagesNotification,
  ),
  const SizedBox(width: 20),
  SvgPicture.asset(Assets.imagesMessage),
  const SizedBox(width: 16),
  Image.asset(
    Assets.imagesUser,
    width: 30,
  ),
  const SizedBox(width: 6),
  const Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xffB2B2B2),),
  const SizedBox(width: 14),
];
