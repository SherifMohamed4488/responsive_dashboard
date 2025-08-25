import 'package:flutter/material.dart';

import 'title_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [


        Row(
          children: [
            Expanded(child: TitleTextFeild(title: "Customer name", hint: "Type customer name")),
            SizedBox(width: 16,),
            Expanded(child: TitleTextFeild(title: "Customer Email", hint: "Type customer email")),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextFeild(title: "Item name", hint: "Type customer name")),
            SizedBox(width: 16,),
            Expanded(child: TitleTextFeild(title: "Item mount", hint: "USD")),
          ],
        ),


      ],
    );
  }
}
