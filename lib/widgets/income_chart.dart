import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {


  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {

    return AspectRatio(

        aspectRatio: 1,

        child: PieChart(getChartData()));
  }

  PieChartData getChartData(){
    var width = MediaQuery.sizeOf(context).width;


    return PieChartData(
      pieTouchData: PieTouchData(

        enabled: true,
        touchCallback: (p0 , pietouchResponce){
         activeIndex =  pietouchResponce?.touchedSection?.touchedSectionIndex ?? -1;

         setState(() {

         });
        }
      ),

      sectionsSpace: 0,
      centerSpaceRadius: width > 1200 || width < 800 ? 50 : 70,


      sections: [

        PieChartSectionData(

          showTitle: false ,
          radius: activeIndex == 0 ? 50 : 40,

          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(

          radius: activeIndex == 1 ? 50 : 40,

          showTitle: false,
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(

          radius: activeIndex == 2 ? 50 : 40,
          showTitle: false,
          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(

          radius: activeIndex == 3 ? 50 : 40,

          showTitle: false,
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ]
    );

  }
}
