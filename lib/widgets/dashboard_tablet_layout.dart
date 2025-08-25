import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_drawer.dart';
import 'package:responsive_dashbord_twelveth/widgets/income_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_and_transaction_history_section.dart';

import 'dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 3 , child: Padding(
          padding: const EdgeInsets.only(top:24),
          child: DashboardMobileLayout(),
        )),
        SizedBox(width: 32,)
      ],
    );
  }
}

