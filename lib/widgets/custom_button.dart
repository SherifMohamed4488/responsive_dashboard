import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,this.backgroundColor,this.textColor});


  Color? backgroundColor , textColor ;
  String text ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: ,
      height: 62,
      child: ElevatedButton(
        onPressed: (){

        },

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? Color(0xff4EB7F2)

        ),
        child: Text(text ,
          style: Styles.styleSemiBold18(context).copyWith(color: textColor ),),


      ),
    );
  }
}
