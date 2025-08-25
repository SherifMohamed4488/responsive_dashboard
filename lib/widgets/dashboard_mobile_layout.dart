import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24,),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}
