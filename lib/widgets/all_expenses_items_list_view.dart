import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_images.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_Item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});



  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {

  static List <AllExpensesItemModel>items = [



    AllExpensesItemModel(image:Assets.moneys , title:
    "Balance", date: "April 2022", price: r"$20,129"),

    AllExpensesItemModel(image:Assets.income , title:
    "Income", date: "April 2022", price: r"$20,129"),

    AllExpensesItemModel(image:Assets.outcome,
        title: "Outcome", date: "April 2022", price: r"$20,129"),




  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {



    return Row(

      children: [

    Expanded(
    child: GestureDetector(
    onTap: (){

      updateIndex(0);

    },
    child: AllExpensesItem(itemModel: items[0] ,
    isSelected: selectedIndex == 0,),
    ),
    ),

        SizedBox(width: 8,),

        Expanded(
          child: GestureDetector(
            onTap: (){

              updateIndex(1);

            },
            child: AllExpensesItem(itemModel: items[1] ,
              isSelected: selectedIndex == 1,),
          ),
        ),

        SizedBox(width: 8,),

        Expanded(
          child: GestureDetector(
            onTap: (){

              updateIndex(2);

            },
            child: AllExpensesItem(itemModel: items[2] ,
              isSelected: selectedIndex == 2,),
          ),
        ),


      ],

    );

    // return Row(
    //
    //   children: AllExpensesItemsListView.items.asMap().entries.map((e){
    //
    //     int index = e.key;
    //     var item = e.value;
    //
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: (){
    //
    //            updateIndex(index);
    //
    //           },
    //           child: Padding(
    //
    //               padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //             child: AllExpensesItem(itemModel: item ,
    //               isSelected: selectedIndex == index,),
    //
    //           ),
    //         ),
    //       );
    //
    //    }).toList(),
    // );


    //   // ListView.builder(
    //   //
    //   // scrollDirection: Axis.horizontal,
    //   //
    //   // itemCount: items.length,
    //   //
    //   //   itemBuilder: (context , index){
    //   //
    //   //     return AllExpensesItem(itemModel: items[index] );
    //   //
    //   //   }
    //
    // );
  }
  void updateIndex(int x){

    setState(
        (){

          selectedIndex = x ;
        }
    );
  }
}


