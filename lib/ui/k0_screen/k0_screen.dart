import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:booking_hotel_app1/core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/chipiew3_item_widget.dart';
import 'widgets/slider_item_widget.dart';





class K0Screen extends StatelessWidget {
  K0Screen ({Key? key})
      :super(
          key: key,
        );
  int sliderIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 8,
                children: [
                  _buildHotelDetailsSection(context),
                  _buildHotelOverviewSection(context),
                  SizedBox(height: 28.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(context),
    );
  }

  /// Section Widget
  Widget _buildHotelDetailsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderBL12,
        ),
        child: Container(
          height: 486.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.h,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL12,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: CarouselSlider.builder(
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
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(
                    top: 18.h,
                    right: 26.h,
                    bottom: 14.h
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomAppBar(
                      height: 22.h,
                      title: AppbarTitle(
                        text: "Отель",
                        margin: EdgeInsets.only(right: 119.h),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 16.h,
                      child: AnimatedSmoothIndicator(
                        activeIndex: sliderIndex,
                        count: 5,
                        effect: ScrollingDotsEffect(
                          spacing: 5,
                          activeDotColor: theme.colorScheme.secondaryContainer,
                          dotColor: theme.colorScheme.secondaryContainer.withValues(
                            alpha: 0.22,
                          ),
                          dotHeight: 6.h,
                          dotWidth: 6.h,
                        ),
                      ),
                    ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 150.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: AppDecoration.fillAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 14.h,
                            decoration: BoxDecoration(
                              color: appTheme.amberA700,
                              borderRadius: BorderRadius.circular(
                                  1.h,
                              ),
                            ),
                          ),
                          Text(
                            "5 Превосходно",
                            style: CustomTextStyles.titleMediumAmberA700,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Steigenberger Makadi",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "OT 134 673 P",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "за тур с перелётом",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                   )
                 ],
               ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHotelOverviewSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Об отеле",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Wrap(
              runSpacing: 8.h,
              spacing: 8.h,
              children:
                  List<Widget>.generate(4, (index) => ChipView3ItemWidget()),
            ),
          ),
          Text(
            "Отель VIP-класса с собственными гольф полями. Высокий уровень сервиса",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeSecondaryContainer_1.copyWith(
              height: 1.20,
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 12.h,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildIncludedFeaturesSection(
                    context,
                    checkmarkOne: ImageConstant.imgSettings,
                    titleEight: "Удобства",
                    titleNine: "Самое необходимое",
                  ),
                ),
                SizedBox(
                    width: 276.h,
                    child: Divider()),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildIncludedFeaturesSection(
                    context,
                    checkmarkOne: ImageConstant.imgClose,
                    titleEight: "Что не включено",
                    titleNine: "Самое необходимое",
                  ),
                ),
                SizedBox(
                    width: 276.h,
                    child: Divider()),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildIncludedFeaturesSection(
                    context,
                    checkmarkOne: ImageConstant.imgSettings,
                    titleEight: "Что не включено",
                    titleNine: "Самое необходимое",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }



  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.bGSecondary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "К выбору номера",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildIncludedFeaturesSection(
      BuildContext context,{
      required String checkmarkOne,
      required String titleEight,
      required String titleNine,
      }) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: checkmarkOne,
          height: 24.h,
          width: 24.h,
          margin: EdgeInsets.only(bottom: 6.h),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleEight,
                  style:
                      CustomTextStyles.titleMediumOnSecondaryContainer.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                Text(
                  titleNine,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.blueGray400,
                  ),
                )
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.h,
          width: 24.h,
          margin: EdgeInsets.only(bottom: 6.h),
        )
      ],
    );
  }


}



