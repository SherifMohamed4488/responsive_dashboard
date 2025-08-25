import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_background_container.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
      
      
        children: [

         SizedBox(height: 5,),
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),

      
          
        ],
      ),
    );
  }
}
