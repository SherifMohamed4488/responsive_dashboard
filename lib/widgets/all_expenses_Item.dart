import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_item_header.dart';

import 'active_and_in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
   AllExpensesItem({required this.itemModel , required this.isSelected});

  AllExpensesItemModel itemModel ;
  bool isSelected ;

  @override
  Widget build(BuildContext context) {
    return  isSelected ?  ActiveAllExpensesItem(itemModel: itemModel) : InActiveAllExpensesItem(itemModel: itemModel) ;
  }
}


