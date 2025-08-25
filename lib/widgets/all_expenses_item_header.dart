import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AllExpensesItemHeader extends StatelessWidget {
   AllExpensesItemHeader({required this.image ,  this.imageBackground , this.imageColor});

String image ;

final Color? imageBackground , imageColor ;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: EdgeInsets.all(14),

                decoration: ShapeDecoration(
                  color: imageBackground ?? Color(0xffFAFAFA),

                  shape: OvalBorder()
                ),

                child: Center(child: SvgPicture.asset(image,

                colorFilter: ColorFilter.mode(imageColor ?? Color(0xff4EB7F2),BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),

        Spacer(),

        Icon(Icons.arrow_forward_ios,
          color: imageColor == null ? Color(0xff064061) : Colors.white,),


      ],
    );
  }
}
