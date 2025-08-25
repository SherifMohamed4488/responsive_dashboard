
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/drawer_item_model.dart';

import 'active_and_inactive_drawer_item.dart';



class DrawerItem extends StatelessWidget {
  DrawerItem({required this.drawerItemModel , required this.isActive});

  final DrawerItemModel drawerItemModel ;
final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(drawerItemModel: drawerItemModel): InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

