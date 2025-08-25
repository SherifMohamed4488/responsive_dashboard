import 'package:flutter/material.dart';

import '../utils/app_styles.dart' show Styles;

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text("Transaction History" , style: Styles.styleSemiBold20(context)),
        Text("See all" , style: Styles.styleMedium16(context).copyWith(color: Color(0xff4EB7F2))),


      ],
    );
  }
}