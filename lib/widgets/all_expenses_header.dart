import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(


      children: [

        Text("All Expensess" , style: Styles.styleSemiBold20(context),),


        Expanded(child: SizedBox()),

        RangeOptions(),
      ],
    );
  }
}