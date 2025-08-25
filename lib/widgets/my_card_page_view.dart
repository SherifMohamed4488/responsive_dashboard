import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
   MyCardPageView({required this.pageController});


  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(

      controller: pageController,

      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard())


    );


  }
}
