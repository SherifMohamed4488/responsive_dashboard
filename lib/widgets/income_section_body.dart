
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/size_config.dart';

import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width < 1750  ?  Expanded(child: Padding(
      padding: const EdgeInsets.all(16),
      child: DetailedIncomeChart(),
    ))
        : Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails())
      ],
    );
  }
}

