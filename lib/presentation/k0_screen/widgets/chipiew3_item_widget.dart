import 'package:booking_hotel_app1/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/theme_helper.dart';


class ChipView3ItemWidget extends StatelessWidget{
  const ChipView3ItemWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 2.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "3-я линия",
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray50,
      selectedColor: theme.colorScheme.primary,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(5.h),
      ),
      onSelected: (value) {},
    );
  }

}