import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.mediumGray,
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.mediumGray,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.primaryBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleBold16(BuildContext context) => GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMedium16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.primaryBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleRegular16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.primaryBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold18(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.lightBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.primaryBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular20(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleMedium20(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold24(BuildContext context) =>
      GoogleFonts.montserrat(
        color: AppColors.lightBlue,
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleBold24(BuildContext context) => GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontWeight: FontWeight.w700,
  );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 900) {
    return width / 800;
  } else if (width < 1200) {
    return width / 1100;
  } else {
    return width / 1600;
  }
}
