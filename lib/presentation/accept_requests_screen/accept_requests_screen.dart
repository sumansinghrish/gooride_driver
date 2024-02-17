import 'bloc/accept_requests_bloc.dart';
import 'models/accept_requests_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class AcceptRequestsScreen extends StatelessWidget {
  const AcceptRequestsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AcceptRequestsBloc>(
      create: (context) => AcceptRequestsBloc(AcceptRequestsState(
        acceptRequestsModelObj: AcceptRequestsModel(),
      ))
        ..add(AcceptRequestsInitialEvent()),
      child: AcceptRequestsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: SizedBox(
              height: 730.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildSeventyNine(context),
                          SizedBox(height: 9.v),
                          SizedBox(
                            height: 427.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildPickupLocation1(context),
                                        SizedBox(height: 22.v),
                                        _buildAcceptButton(context),
                                        SizedBox(height: 100.v),
                                        _buildEightyNine(context),
                                      ],
                                    ),
                                  ),
                                ),
                                _buildAvatarRow(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          _buildEightyThree(context),
                        ],
                      ),
                    ),
                  ),
                  _buildEightyOne(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 36.v,
      title: AppbarSubtitle(
        text: "msg_you_have_10_new".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(top: 9.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 11.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_earl_berry".tr,
                  style: CustomTextStyles.bodyLargeHomenajePrimaryContainer,
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
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
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
    );
  }

  /// Section Widget
  Widget _buildPickupLocation(BuildContext context) {
    return BlocSelector<AcceptRequestsBloc, AcceptRequestsState,
        TextEditingController?>(
      selector: (state) => state.pickupLocationController,
      builder: (context, pickupLocationController) {
        return CustomTextFormField(
          controller: pickupLocationController,
          hintText: "msg_7958_swift_village".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPickupLocation1(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 130.v,
              width: 339.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primaryContainer,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLine3,
            height: 41.v,
            width: 2.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 38.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 14.h,
              top: 21.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOvalAmberA400,
            height: 10.adaptSize,
            width: 10.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 26.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOvalPrimary,
            height: 24.v,
            width: 18.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 22.v,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 42.h,
                right: 21.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_pickup".tr.toUpperCase(),
                    style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                  ),
                  SizedBox(height: 1.v),
                  _buildPickupLocation(context),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_drop_off".tr.toUpperCase(),
                    style: CustomTextStyles.bodyMediumSFUIDisplayGray400,
                  ),
                  Text(
                    "msg_105_william_st".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_accept".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 25.h,
      ),
      buttonTextStyle: CustomTextStyles.titleLargeBold,
    );
  }

  /// Section Widget
  Widget _buildPickupLocationThree(BuildContext context) {
    return BlocSelector<AcceptRequestsBloc, AcceptRequestsState,
        TextEditingController?>(
      selector: (state) => state.pickupLocationThreeController,
      builder: (context, pickupLocationThreeController) {
        return CustomTextFormField(
          controller: pickupLocationThreeController,
          hintText: "msg_62_kobe_trafficway".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 130.v,
              width: 339.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primaryContainer,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgOval,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgOvalAmberA400,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgLine3,
                          height: 41.v,
                          width: 2.h,
                        ),
                        SizedBox(height: 2.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgOvalPrimary,
                          height: 24.v,
                          width: 18.h,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        bottom: 4.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_pickup".tr.toUpperCase(),
                            style:
                                CustomTextStyles.bodyMediumSFUIDisplayGray400,
                          ),
                          SizedBox(height: 1.v),
                          _buildPickupLocationThree(context),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_drop_off".tr.toUpperCase(),
                            style:
                                CustomTextStyles.bodyMediumSFUIDisplayGray400,
                          ),
                          Text(
                            "msg_280_icie_park_suit".tr,
                            style: theme.textTheme.bodyMedium,
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
    );
  }

  /// Section Widget
  Widget _buildAvatarRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 214.v,
          bottom: 138.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL16,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(top: 3.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_callie_greer".tr,
                    style: CustomTextStyles.bodyLargeHomenajePrimaryContainer,
                  ),
                  SizedBox(height: 7.v),
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
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                right: 20.h,
                bottom: 5.v,
              ),
              child: _buildPriceColumn(
                context,
                price: "lbl_20_00".tr,
                distance: "lbl_1_5_km".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_callie_greer".tr,
                  style: CustomTextStyles.bodyLargeHomenajePrimaryContainer,
                ),
                SizedBox(height: 7.v),
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
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 20.h,
              bottom: 7.v,
            ),
            child: _buildPriceColumn(
              context,
              price: "lbl_10_00".tr,
              distance: "lbl_0_5_km".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPickupLocationThree1(BuildContext context) {
    return BlocSelector<AcceptRequestsBloc, AcceptRequestsState,
        TextEditingController?>(
      selector: (state) => state.pickupLocationThreeController1,
      builder: (context, pickupLocationThreeController1) {
        return CustomTextFormField(
          controller: pickupLocationThreeController1,
          hintText: "msg_62_kobe_trafficway".tr,
          textInputAction: TextInputAction.done,
          alignment: Alignment.centerRight,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEightyOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 130.v,
          width: 336.h,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 17.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer6.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrastWhiteA700,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseAmberA400,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                          ),
                          SizedBox(height: 6.v),
                          SizedBox(
                            height: 41.v,
                            child: VerticalDivider(
                              width: 2.h,
                              thickness: 2.v,
                              color: appTheme.gray400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 67.v,
                      width: 276.h,
                      margin: EdgeInsets.only(left: 11.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 161.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_pickup".tr.toUpperCase(),
                                    style: CustomTextStyles
                                        .bodyMediumSFUIDisplayGray400,
                                  ),
                                  SizedBox(height: 1.v),
                                  _buildPickupLocationThree1(context),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "lbl_drop_off".tr.toUpperCase(),
                                    style: CustomTextStyles
                                        .bodyMediumSFUIDisplayGray400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 22.v),
                              child: SizedBox(
                                width: 276.h,
                                child: Divider(
                                  color: appTheme.gray200,
                                ),
                              ),
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
      ),
    );
  }

  /// Common widget
  Widget _buildPriceColumn(
    BuildContext context, {
    required String price,
    required String distance,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          price,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            distance,
            style: CustomTextStyles.bodyMediumGray600.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }
}
