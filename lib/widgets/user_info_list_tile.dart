import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/models/user_info_model.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';

import '../utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';


class UserInfoListTile extends StatelessWidget {

  UserInfoListTile({required this.userInfoModel});

UserInfoModel userInfoModel ;


  @override
  Widget build(BuildContext context) {
    return Card(

      color: Color( 0xffFAFAFA),
      elevation: 0,

      child: ListTile(

        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title , style: Styles.styleSemiBold16(context),),

        subtitle: Text(userInfoModel.subtitle, style:Styles.styleRegular12(context) ,),


      ),
    ) ;
  }
}
