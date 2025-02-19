import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/slider_item_widget.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/chipview_item_widget.dart';

class K1Screen extends StatefulWidget {
  K1Screen({Key? key})
      : super(
      key: key,
  );

  @override
  State<K1Screen> createState() => _K1ScreenState();
}

class _K1ScreenState extends State<K1Screen> {
  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      appBar: _buildNavigationBar(context),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(16.h),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildImageSliderSection(context),
                      SizedBox(height: 6.h),
                      _buildRoomDetailsSection(context),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                _buildImageGallerySection(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///Section Widget
  PreferredSizeWidget _buildNavigationBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 16.h),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Steigenberger Makadi",
      ),
      styleType: Style.bgFillWhiteA700,
    );
  }

  ///Section Widget
  Widget _buildImageSliderSection(BuildContext context) {
    return SizedBox(
      height: 256.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 256.h,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 16.h,
              margin: EdgeInsets.only(bottom: 8.h),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 5,
                  activeDotColor: theme.colorScheme.secondaryContainer,
                  dotColor:
                      theme.colorScheme.secondaryContainer.withOpacity(0.22),
                  dotHeight: 6.h,
                  dotWidth: 6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRoomDetailsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Стандартный с видом на бассейн или сад",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge!.copyWith(
              height: 1.20,
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 8.h,
                spacing: 8.h,
                children:
                    List<Widget>.generate(2, (index) => ChipviewItemWidget()), // Assuming ChipviewItemWidget is defined elsewhere
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Подробнее о номере",
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 24.h,
                  width: 24.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "186 600 P",
                style: theme.textTheme.headlineLarge,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "за 7 ночей с перелётом",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          CustomElevatedButton(
            text: "Выбрать номер",
          ),
        ],
      ),
    );
  }

  /// Section Widget for Image Gallery
  Widget _buildImageGallerySection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Container(
          height: 288.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage201,
                  height: 256.h,
                  width: 344.h,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 4.h,
                          ),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              SizedBox(width: 4.h),
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer
                                      .withOpacity(0.22),
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              SizedBox(width: 4.h),
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer
                                      .withOpacity(0.17),
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              SizedBox(width: 4.h),
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer
                                      .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.h),
                              SizedBox(width: 4.h),
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer
                                      .withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]
            ),
          ),
        ),
    );
  }

  /// Navigates back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
