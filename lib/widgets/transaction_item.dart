import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/transaction_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
   TransactionItem({required this.transactionModel});

  TransactionModel transactionModel ;

  @override
  Widget build(BuildContext context) {
    return Card(

      color: const Color(0xffFAFAFA),
      elevation: 0,

      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(12)
      ),

      child: ListTile(

        title: Text(transactionModel.title , style: Styles.styleSemiBold16(context),),
        subtitle: Text(transactionModel.date , style: Styles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),) ,

        trailing: Text(transactionModel.amount ,

          style: Styles.styleSemiBold20(context).copyWith(

            color: transactionModel.isWithDrawal ? Color(0xffF3735E) : Color(0xff7DD97B)
          ) ,


        ) ,

      ),
    ) ;
  }
}
