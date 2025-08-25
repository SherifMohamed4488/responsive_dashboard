import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/views/dashboard_view.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_drawer.dart';
import 'package:responsive_dashbord_twelveth/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashbord_twelveth/widgets/size_config.dart';


void main(){



  runApp(ResponsiveDashboard());
}

class ResponsiveDashboard extends StatefulWidget {
  const ResponsiveDashboard({super.key});

  @override
  State<ResponsiveDashboard> createState() => _ResponsiveDashboardState();
}

class _ResponsiveDashboardState extends State<ResponsiveDashboard> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,


      home: Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? AppBar(

          backgroundColor: Color(0xffFAFAFA),
          elevation: 0,
          leading: IconButton(
            onPressed: (){

              scaffoldKey.currentState!.openDrawer();

            },
            icon : Icon(Icons.menu),
        )) : null,
          drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
          backgroundColor: Color(0xffF7F9FA),
          body:DashBoardView(),
      ),

    ) ;
  }
}
