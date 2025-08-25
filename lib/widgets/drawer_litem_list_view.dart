import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/drawer_item_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_images.dart';
import 'package:responsive_dashbord_twelveth/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {



  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  List <DrawerItemModel> items = [



    DrawerItemModel(image: Assets.category, title: "DashBoard"),
    DrawerItemModel(image: Assets.transaction, title: "My transaction"),
    DrawerItemModel(image: Assets.graph, title: "statistics"),
    DrawerItemModel(image: Assets.svgWallet, title: "wallet account"),
    DrawerItemModel(image: Assets.svgChart, title: "My investment"),

  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(


        itemCount: items.length,
        itemBuilder: (context,index){


          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }

            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(drawerItemModel: items[index] , isActive: activeIndex == index,),
            ),
          );
        });
  }
}
