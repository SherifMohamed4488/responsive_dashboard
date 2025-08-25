import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart' show Styles;
import 'package:responsive_dashbord_twelveth/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("Latest Transaction" , style: Styles.styleMedium16(context),),
        SizedBox(height: 16,),
        LatestTransactionListView(),

      ],
    );
  }
}

