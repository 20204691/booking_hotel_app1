import 'package:booking_hotel_app1/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';
import '../../../widgets/custom_image_view.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage20,
        height: 256.h,
        radius: BorderRadius.circular(14.h),
      ),
    );
  }
}
