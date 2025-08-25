import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [


        Text("Quick Invoice" ,

          style: Styles.styleSemiBold20(context),),
        Spacer(),

        Container(

          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xffFAFAFA),
              shape: OvalBorder()

          ),
          child: Icon(Icons.add , color: Color(0xff4EB7F2),),
        )

      ],
    );
  }
}

