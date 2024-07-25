import 'package:flutter/material.dart';
import 'package:my_adaptive_dashboard/utils/app_style.dart';

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0).copyWith(left: 16),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: 'Search',
        hintStyle: AppStyle.poppinsRegular16(context),
        suffixIcon: const Icon(
          Icons.search,
          size: 20,
          color: Color(0xffB2B2B2),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xffE0E0E0)),
    );
  }
}
