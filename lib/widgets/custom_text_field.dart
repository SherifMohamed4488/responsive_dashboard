import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({required this.hint});


  String hint ;
  @override
  Widget build(BuildContext context) {
    return TextField(


      decoration: InputDecoration(
        hintText: hint,
         hintStyle: Styles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
         fillColor: Color(0xffFAFAFA),
        filled: true,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(

          color: Color(0xffFAFAFA),
        )

      );
  }
}
