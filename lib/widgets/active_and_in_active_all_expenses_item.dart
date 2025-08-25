import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),

      decoration: ShapeDecoration(

          color: Color(0xffFAFAFA),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1 , color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),

          )
      ),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          AllExpensesItemHeader(image: itemModel.image,),

          SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: Styles.styleMedium16(context),),

          SizedBox(height: 8,),
          Text(itemModel.date,style: Styles.styleRegular14(context),),
          SizedBox(height: 16,),
          Text(itemModel.price , style: Styles.styleSemiBold24(context),)
        ],
      ),

    );
  }
}
class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),

      decoration: ShapeDecoration(

          color: Color(0xff4DB7F2),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1 , color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),

          )
      ),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          AllExpensesItemHeader(image: itemModel.image,
          imageBackground: Colors.white.withValues(alpha: 0.1000000149011612),
            imageColor: Colors.white,
          ),

          SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: Styles.styleMedium16(context).copyWith(color: Colors.white),),

          SizedBox(height: 8,),
          Text(itemModel.date,style: Styles.styleRegular14(context).copyWith(color: Color(0xffFAFAFA)),),
          SizedBox(height: 16,),
          Text(itemModel.price , style: Styles.styleSemiBold24(context).copyWith(color: Colors.white),)
        ],
      ),

    );
  }
}

