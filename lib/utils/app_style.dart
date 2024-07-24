import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_adaptive_dashboard/widgets/adaptive_layout.dart';

abstract class AppStyle {
  static TextStyle poppinsMedium16(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFFFF5151),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle poppinsMedium14(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFFFF5151),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle poppinsMedium48(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF161E54),
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle poppinsMedium24(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle robotoRegular10(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle robotoRegular12(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle robotoRegular14(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle poppinsRegular16(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle poppinsSemiBold36(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle poppinsSemiBold20(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle poppinsRegular12(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle poppinsRegular15(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF303030),
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle poppinsRegular14(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle poppinsMedium18(context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF161E54),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle robotoMedium36(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFF161E54),
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle robotoMedium10(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle robotoMedium12(context) {
    return GoogleFonts.roboto(
      color: const Color(0xFF686868),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle robotoRegular16(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }
}

//! get responsive font size
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < AdaptiveLayout.tabletBreakpoint) {
    return width / 550;
  } else if (width < AdaptiveLayout.desktopBreakpoint) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
