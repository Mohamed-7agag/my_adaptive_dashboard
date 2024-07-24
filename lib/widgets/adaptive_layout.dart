import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  static const int tabletBreakpoint = 800;
  static const int desktopBreakpoint = 1200;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < tabletBreakpoint;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= tabletBreakpoint && width < desktopBreakpoint;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= desktopBreakpoint;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopBreakpoint) {
          return desktopLayout(context);
        } else if (constraints.maxWidth >= tabletBreakpoint) {
          return tabletLayout(context);
        }
        return mobileLayout(context);
      },
    );
  }
}