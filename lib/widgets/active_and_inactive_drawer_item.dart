import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/drawer_item_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(


      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title,

        style: Styles.styleMedium16(context),),
    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(


      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title,

        style: Styles.styleBold16(context),),

      trailing: Container(
        width: 3.27,

        color:Color (0xff4EB7F2),
      ),
    );
  }
}
