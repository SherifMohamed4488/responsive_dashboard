import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/transaction_item.dart';

import '../models/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static var items = [

    TransactionModel(title: "Cash Withdrawal", date: '13 Apr, 2022 ' , amount: r"$20,129 " , isWithDrawal: true ,),
    TransactionModel(title: "Landing Page project", date: '13 Apr, 2022 at 3:30 PM ' , amount: r"$2,000 " , isWithDrawal: false ,),
    TransactionModel(title: "Juni Mobile App project", date: '13 Apr, 2022 at 3:30 PM' , amount: r"$20,129 " , isWithDrawal: false ,),


  ];

  @override
  Widget build(BuildContext context) {
    
    
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),

    );
    return ListView.builder(

      itemCount: items.length,
      shrinkWrap: false,

      itemBuilder: (context , index){


        return TransactionItem(transactionModel: items[index]);
      },



    );
  }
}
