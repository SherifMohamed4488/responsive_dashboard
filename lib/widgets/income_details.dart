import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/income_details_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

import 'income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static var items = [

    IncomeDetailsModel(title: "Design service" , value: "40%" , color: Color(0xff208CC8)),
    IncomeDetailsModel(title: "Design product" , value: "25%" , color: Color(0xff4EB7F2)),
    IncomeDetailsModel(title: "Product royalti" , value: "20%" , color: Color(0xff064061)),
    IncomeDetailsModel(title: "other" , value: "22%" , color: Color(0xffE2DECD)),


  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      children: items.map((e) => IncomeItemDetails(incomeDetailsModel: e)).toList(),
    );
    return ListView.builder(


      shrinkWrap: true,
      itemCount: items.length,

      itemBuilder: (context , index){

              return IncomeItemDetails (incomeDetailsModel: items[index],);
        }


    );
  }
}

