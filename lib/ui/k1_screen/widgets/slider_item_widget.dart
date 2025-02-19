import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage20256x342,
        height: 256.h,
      ),
    );
  }
}
