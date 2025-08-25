import 'package:flutter/material.dart';
import 'package:responsive_dashbord_twelveth/utils/app_styles.dart';
import 'package:responsive_dashbord_twelveth/widgets/custom_background_container.dart';
import 'package:responsive_dashbord_twelveth/widgets/income_chart.dart';
import 'package:responsive_dashbord_twelveth/widgets/income_details.dart';
import 'package:responsive_dashbord_twelveth/widgets/range_options.dart';

import 'income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(

    child:

        Column(

       children: [
      
          IncomeSectionHeader(),
          IncomeSectionBody()
  ],
    )
    );
  }
}

