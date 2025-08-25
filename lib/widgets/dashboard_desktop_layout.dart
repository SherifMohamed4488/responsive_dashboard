import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_dot_indecator.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_drawer.dart';
import 'package:responsive_dashbord_twelveth/widgets/income_chart.dart';
import 'package:responsive_dashbord_twelveth/widgets/income_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_and_transaction_history_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_page_view.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_section.dart';
import 'package:responsive_dashbord_twelveth/widgets/quick_invoice.dart';
import 'package:responsive_dashbord_twelveth/widgets/transaction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(


      children: [


        Expanded(child: CustomDrawer()),

        SizedBox(width: 32,),

        Expanded(
          flex: 3,
          child: CustomScrollView(


            slivers: [

              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(

                  children: [
                    Expanded(flex: 2, child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoiceSection(),
                    )),
                    SizedBox(width: 24,),
                    Expanded(child:Column(

                      children: [
                        MyCardAndTransactionHistorySection(),
                        SizedBox(height: 10),
                        Expanded(child: IncomeSection()),
                      ],
                    ) ),
                  ],
                )
                ,
              )
            ],
          ),
        )





      ],
    );
  }
}


