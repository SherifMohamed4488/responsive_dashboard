import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_Item.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_header.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_background_container.dart';

import '../utils/app_images.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(

        child: Column(

          children: [

            AllExpensesHeader(),
            SizedBox(height: 16,),
            AllExpensesItemsListView(),

      ],
    ),

    );
  }
}


