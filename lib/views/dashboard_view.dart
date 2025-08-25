import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/views/adaptive_layout.dart';
import 'package:responsive_dashbord_twelveth/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashbord_twelveth/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashbord_twelveth/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_section.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(

        mobileLayout: (context) =>DashboardMobileLayout(),
        tabletLayout:  (context) => DashboardTabletLayout(),
        desktopLayout: (context ) => DashBoardDesktopLayout());
  }
}
