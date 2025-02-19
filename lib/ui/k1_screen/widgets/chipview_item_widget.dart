import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ChipviewItemWidget extends StatelessWidget {
  const ChipviewItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Все включено",
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
        borderRadius: BorderRadius.circular(5.h),
      ),
      onSelected: (value) {},
    );
  }
}
