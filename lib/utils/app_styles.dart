import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static final TextStyle styleRegular12 = GoogleFonts.montserrat(
    color: AppColors.mediumGray,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle styleRegular14 = GoogleFonts.montserrat(
    color: AppColors.mediumGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle styleSemiBold16 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle styleBold16 = GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle styleMedium16 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle styleRegular16 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle styleSemiBold18 = GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle styleSemiBold20 = GoogleFonts.montserrat(
    color: AppColors.primaryBlue,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle styleRegular20 = GoogleFonts.montserrat(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle styleSemiBold24 = GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  //
  static final TextStyle styleBold24 = GoogleFonts.montserrat(
    color: AppColors.lightBlue,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}
