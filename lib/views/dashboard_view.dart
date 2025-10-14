import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: AdaptiveLayoutWidget(
        mobileBuilder: (context) => SizedBox(),
        tabletBuilder: (context) => SizedBox(),
        desktopBuilder: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
