import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/custom_floating_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 72.h,
                            vertical: 143.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup67,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcCurrent,
                            height: 230.adaptSize,
                            width: 230.adaptSize,
                          ),
                        ),
                      ),
                      _buildLineTwoRow(context),
                      _buildAvatarRow(context),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: _buildFloatingActionButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLineTwoRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 518.v),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlinePrimaryContainer4.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 95.v,
              width: 21.h,
              margin: EdgeInsets.only(
                top: 33.v,
                bottom: 96.v,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 53.v,
                      child: VerticalDivider(
                        width: 3.h,
                        thickness: 3.v,
                        color: appTheme.gray400,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.all(3.h),
                      decoration: AppDecoration.outlineAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.amberA400,
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 24.v,
                    width: 18.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  bottom: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 166.h,
                      child: Divider(
                        color: theme.colorScheme.onPrimary,
                        indent: 109.h,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_pickup".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "msg_7958_swift_village".tr,
                      style: CustomTextStyles
                          .bodyLargeHindSiliguriPrimaryContainer,
                    ),
                    SizedBox(height: 6.v),
                    Divider(
                      color: appTheme.gray200,
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_drop_off".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "msg_105_william_st".tr,
                      style: CustomTextStyles
                          .bodyLargeHindSiliguriPrimaryContainer,
                    ),
                    SizedBox(height: 41.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_ignore".tr,
                                style: CustomTextStyles.titleMediumPrimary,
                              ),
                            ),
                            Container(
                              height: 30.v,
                              width: 105.h,
                              margin: EdgeInsets.only(left: 37.h),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 29.v,
                                      width: 105.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.amberA400,
                                        borderRadius: BorderRadius.circular(
                                          8.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 22.h),
                                      child: Text(
                                        "lbl_accept".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimary_1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvatarRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 462.v,
          bottom: 231.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAvatar,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_earl_berry".tr,
                          style: CustomTextStyles
                              .bodyLargeHomenajePrimaryContainer,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 151.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17.v,
                                width: 73.h,
                                margin: EdgeInsets.only(top: 1.v),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 14.v,
                                        width: 73.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.amberA400,
                                          borderRadius: BorderRadius.circular(
                                            7.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text(
                                          "lbl_google_pay".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 17.v,
                                width: 73.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 14.v,
                                        width: 73.h,
                                        margin: EdgeInsets.only(top: 1.v),
                                        decoration: BoxDecoration(
                                          color: appTheme.amberA400,
                                          borderRadius: BorderRadius.circular(
                                            7.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_discount".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                right: 21.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_25_00".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Text(
                        "lbl_2_2_km".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 44,
      width: 44,
      backgroundColor: appTheme.whiteA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgContrast,
        height: 22.0.v,
        width: 22.0.h,
      ),
    );
  }
}
