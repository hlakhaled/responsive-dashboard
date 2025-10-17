import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: MediaQuery.sizeOf(context).width < 900 ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 900
          ? AppBar(
              elevation: 0,

              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  globalKey.currentState!.openDrawer();
                  setState(() {});
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: AppColors.background,
      body: AdaptiveLayoutWidget(
        mobileBuilder: (context) => DashboardMobileLayout(),
        tabletBuilder: (context) => DashboardTabletLayout(),
        desktopBuilder: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
