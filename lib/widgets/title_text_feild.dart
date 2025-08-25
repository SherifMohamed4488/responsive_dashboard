import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_text_field.dart';

class TitleTextFeild extends StatelessWidget {
   TitleTextFeild({required this.title ,required this.hint});


  String title , hint ;
  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title , style: Styles.styleMedium16(context),),
        SizedBox(height: 12,),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
