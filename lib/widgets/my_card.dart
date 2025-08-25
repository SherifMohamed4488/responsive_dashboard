
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_images.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(

   aspectRatio: 420/215,
      child: Container(

         decoration: ShapeDecoration(
           image: DecorationImage(image: AssetImage(Assets.backgroundCard)),
             
             color: Color(0xff4EB7F2),
             shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12),
         )),
        child: Column(
     crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            ListTile(

              contentPadding: EdgeInsets.only(right: 42 , left: 31,top: 16),

            title: Text("Name Card" , style: Styles.styleRegular16(context).copyWith(color: Colors.white),),
            subtitle: Text("Syah Bandi", style: Styles.styleMedium20(context),),
            trailing: SvgPicture.asset(Assets.galleryCard ),
            ),
            Expanded(child: SizedBox()),
 
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("0918 8124 0042 8129" , style: Styles.styleSemiBold24(context).copyWith(color: Colors.white),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("12/20 - 124" , style: Styles.styleRegular16(context).copyWith(color: Colors.white),),
            ),
            Flexible(child: SizedBox(height: 26,)),
            
            
          ],
        ),
      ),
    );
  }
}
