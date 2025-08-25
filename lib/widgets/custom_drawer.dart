
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/drawer_item_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_images.dart';
import 'package:responsive_dashbord_twelveth/widgets/drawer_item.dart';
import 'package:responsive_dashbord_twelveth/widgets/user_info_list_tile.dart';

import '../models/user_info_model.dart';
import 'active_and_inactive_drawer_item.dart';
import 'drawer_litem_list_view.dart' show DrawerItemListView;

class CustomDrawer extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.sizeOf(context).width * 0.7,

      color: Colors.white,

      child: CustomScrollView(

        slivers: [
          
          SliverToBoxAdapter(child: UserInfoListTile(userInfoModel:
              UserInfoModel (image: Assets.frameLekan,
              title: "Lekan Okeowo", subtitle: "demo@gmail.com")


          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),

            DrawerItemListView(),

          // SliverToBoxAdapter(child: Expanded(child: SizedBox())),
          SliverFillRemaining(

            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: "Settings System "  , image: Assets.settings)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: "Logout accont "  , image: Assets.logout)),
                SizedBox(height: 48,),
              ],
            ),
          )

        ],
      ),
    );
  }
}

