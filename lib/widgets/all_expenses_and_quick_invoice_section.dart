import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses.dart';
import 'package:responsive_dashbord_twelveth/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24,),
        QuickInvoice(),
      ],
    );
  }
}