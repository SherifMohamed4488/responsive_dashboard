import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_background_container.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_button.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_text_field.dart';
import 'package:responsive_dashbord_twelveth/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dashbord_twelveth/widgets/quick_invoice_form.dart';
import 'package:responsive_dashbord_twelveth/widgets/quick_invoice_header.dart' show QuickInvoiceHeader;
import 'package:responsive_dashbord_twelveth/widgets/title_text_feild.dart';

import 'latest_transaction.dart' show LatestTransaction;

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundContainer(
        child:Column(

          children: [

            QuickInvoiceHeader(),
            // SizedBox(height: 10,),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
            SizedBox(height: 24,),
            Row(
              children: [

                Expanded(child: CustomButton(text: "Add more details",
                  textColor: Color(0xff4EB7F2),backgroundColor: Colors.white,)),
                SizedBox(width: 24,),
                Expanded(child: CustomButton(text: "Send money",)),
              ],
            )

          ],
        )
    );
  }
}






