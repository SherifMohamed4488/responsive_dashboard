import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_dot_indecator.dart';

class DotIndecator extends StatelessWidget {
   DotIndecator({required this.currentPageIndex});

  int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 6),
        child: CustomDotIndecator(isActive: index == currentPageIndex,),
      ))
    );
  }
}
