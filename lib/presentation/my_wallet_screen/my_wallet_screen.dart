import '../my_wallet_screen/widgets/userprofile_item_widget.dart';
import 'bloc/my_wallet_bloc.dart';
import 'models/my_wallet_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyWalletBloc>(
      create: (context) => MyWalletBloc(MyWalletState(
        myWalletModelObj: MyWalletModel(),
      ))
        ..add(MyWalletInitialEvent()),
      child: MyWalletScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 383.h,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Container(
            decoration: AppDecoration.fillOnErrorContainer,
            child: Column(
              children: [
                _buildUserProfile(context),
                SizedBox(height: 18.v),
                SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 6,
                      activeDotColor: appTheme.amber500,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
                SizedBox(height: 45.v),
                _buildPaymentMethods(context),
                SizedBox(height: 20.v),
                _buildCoupon(context),
                _buildIntegralMall(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 345.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.v),
              decoration: AppDecoration.fillAmber,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    leadingWidth: 383.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgChevron,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 351.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_my_wallet".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                        CustomElevatedButton(
                          height: 36.v,
                          width: 116.h,
                          text: "lbl_25002".tr,
                          margin: EdgeInsets.only(bottom: 2.v),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 14.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                          buttonTextStyle: CustomTextStyles.titleLargeRoboto,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                ],
              ),
            ),
          ),
          BlocBuilder<MyWalletBloc, MyWalletState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 225.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    state.sliderIndex = index;
                  },
                ),
                itemCount:
                    state.myWalletModelObj?.userprofileItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  UserprofileItemModel model =
                      state.myWalletModelObj?.userprofileItemList[index] ??
                          UserprofileItemModel();
                  return UserprofileItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethods(BuildContext context) {
    return Container(
      height: 44.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimarycontainer,
            height: 13.v,
            width: 8.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 16.h),
          ),
          CustomElevatedButton(
            width: 170.h,
            text: "lbl_payment_methods".tr,
            buttonStyle: CustomButtonStyles.fillWhiteA1,
            buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCoupon(BuildContext context) {
    return Container(
      height: 44.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 359.h,
              child: Divider(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimarycontainer,
            height: 13.v,
            width: 8.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 16.h),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 37.h),
              child: Text(
                "lbl_3".tr,
                style: CustomTextStyles.bodyLargeGray400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Text(
                "lbl_coupon".tr,
                style: CustomTextStyles.bodyLargeBlack900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIntegralMall(BuildContext context) {
    return Container(
      height: 44.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimarycontainer,
            height: 13.v,
            width: 8.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 16.h),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 37.h),
              child: Text(
                "lbl_4500".tr,
                style: CustomTextStyles.bodyLargeGray400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Text(
                "lbl_integral_mall".tr,
                style: CustomTextStyles.bodyLargeBlack900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.blueGray50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
