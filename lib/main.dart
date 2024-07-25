import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => const MyApp(),
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
