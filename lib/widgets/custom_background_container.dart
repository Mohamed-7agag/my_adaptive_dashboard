import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer(
      {super.key, required this.child, this.padding});
  final Widget child;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xffE0E0E0)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
