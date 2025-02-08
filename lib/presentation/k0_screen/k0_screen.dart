import 'package:booking_hotel_app1/core/utils/size_utils.dart';
import 'package:booking_hotel_app1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';



class K0Screen extends StatelessWidget {
  K0Screen ({Key? key})
      :super(
          key: key,
        );
  int sliderIndex = 1;


  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(

                  children: [

                    SizedBox(height: 28.h)
                  ],
                ),
              ),
            ),
          )
      ),


    );
  }
}



