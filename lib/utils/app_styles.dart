


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/widgets/size_config.dart';

abstract class Styles {

   static TextStyle styleRegular16 (context){

      return TextStyle(

          color: Color(0xff064061),
          fontSize: getResponseFontSize(context ,fontSize: 16),
          fontFamily: "MontSerrat",
          fontWeight: FontWeight.w400
      );
   }



   static TextStyle styleBold16(BuildContext context) {
      return TextStyle(
         color: Color(0xff064061),
         fontSize: getResponseFontSize(context, fontSize: 16),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w700,
      );
   }

   static TextStyle styleMedium16(BuildContext context) {
      return TextStyle(
         color: Color(0xff064061),
         fontSize: getResponseFontSize(context, fontSize: 16),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w500,
      );
   }

   static TextStyle styleSemiBold16(BuildContext context) {
      return TextStyle(
         color: Color(0xff064061),
         fontSize: getResponseFontSize(context, fontSize: 16),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w600,
      );
   }

   static TextStyle styleSemiBold20(BuildContext context) {
      return TextStyle(
         color: Color(0xff064061),
         fontSize: getResponseFontSize(context, fontSize: 20),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w600,
      );
   }

   static TextStyle styleRegular12(BuildContext context) {
      return TextStyle(
         color: Color(0xffAAAAAA),
         fontSize: getResponseFontSize(context, fontSize: 12),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w400,
      );
   }

   static TextStyle styleSemiBold24(BuildContext context) {
      return TextStyle(
         color: Color(0xff4EB7F2),
         fontSize: getResponseFontSize(context, fontSize: 24),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w600,
      );
   }

   static TextStyle styleRegular14(BuildContext context) {
      return TextStyle(
         color: Color(0xffAAAAAA),
         fontSize: getResponseFontSize(context, fontSize: 14),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w400,
      );
   }

   static TextStyle styleSemiBold18(BuildContext context) {
      return TextStyle(
         color: Color(0xffFFFFFF),
         fontSize: getResponseFontSize(context, fontSize: 18),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w600,
      );
   }

   static TextStyle styleMedium20(BuildContext context) {
      return TextStyle(
         color: Color(0xffFFFFFF),
         fontSize: getResponseFontSize(context, fontSize: 20),
         fontFamily: "MontSerrat",
         fontWeight: FontWeight.w500,
      );
   }


}

double getResponseFontSize( context ,{required double fontSize}){

 double scalaFactor = getScaleFactor(context );

 double responsiveFontSize = fontSize * scalaFactor;

 double lowerLimit = fontSize * 0.8;
 double upperLimit = fontSize * 1.2;
 
 return responsiveFontSize.clamp(lowerLimit, upperLimit);




}

 double getScaleFactor(context) {

    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio ;
    //
    // double width = physicalWidth / devicePixelRatio;

    double width = MediaQuery.sizeOf(context).width;



    if (width < SizeConfig.tablet) {
       return width / 550;
    } else if (width < SizeConfig.desktop) {
       return width / 1000;
    } else {
       return width / 1920;
    }

}