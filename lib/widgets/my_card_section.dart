import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/dot_indecator.dart';
import 'package:responsive_dashbord_twelveth/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();

}

class _MyCardSectionState extends State<MyCardSection> {


   late  PageController pageController ;
    int cureentPageIndex = 0;

  void initState(){

  pageController = PageController();

  pageController.addListener( (){

  cureentPageIndex = pageController.page!.round();

  setState(() {});

 }



);

  }
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        SizedBox(

            width: 420,

            child: Text("My card" , style: Styles.styleSemiBold20(context),)
        ),
        SizedBox(height: 20,),
        MyCardPageView(pageController: pageController,),
        SizedBox(height: 20,),
        DotIndecator(currentPageIndex: cureentPageIndex,),

      ],
    );
  }
}
