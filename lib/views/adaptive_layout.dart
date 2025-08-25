

import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/size_config.dart';
// import 'package:starter_project_adaptive_ui/tablet_layout.dart';
//
// import 'desktop_layout.dart';
// import 'mobile_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  AdaptiveLayout({ required this.mobileLayout ,required this.tabletLayout , required this.desktopLayout});

  WidgetBuilder mobileLayout , tabletLayout , desktopLayout ;



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

        builder: (context , constrains){

          if(constrains.maxWidth < 800){

            return  mobileLayout(context);
          }else if(  constrains.maxWidth < 1200 ){

            return tabletLayout(context);
          }else{

            return desktopLayout(context);


          }


        });
  }
}
