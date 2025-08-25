import 'package:flutter/material.dart';

import '../models/income_details_model.dart';
import '../utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  IncomeItemDetails({required this.incomeDetailsModel});


  IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {


    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Container(
        height: 12,
        width: 12,


        decoration: ShapeDecoration(

            color: incomeDetailsModel.color ,
            shape: OvalBorder()

        ),
      ) ,

      title: Text( incomeDetailsModel.title , style: Styles.styleRegular16(context),),


      trailing: Text(incomeDetailsModel.value, style: Styles.styleMedium16(context).copyWith(color: Color(0xff208CC8)),) ,
    );
  }
}

