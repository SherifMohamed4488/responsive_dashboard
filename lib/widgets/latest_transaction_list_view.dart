import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/user_info_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_images.dart';
import 'package:responsive_dashbord_twelveth/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel>  items =
  [
    UserInfoModel(image: Assets.frameMadrani, title: "Madrani Andi " , subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.frameJosua, title: "Josua Nunito " , subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(image: Assets.frameLekan, title: "Madrani Andi " , subtitle: "Madraniadi20@gmail"),


  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
           itemCount: items.length,
          itemBuilder:(context , index){

          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));

          }

      ),
    );
  }
}
