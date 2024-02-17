import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_title.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_title_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_icon_button.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 768.v,
                  width: 382.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(left: 1.h),
                            decoration: AppDecoration.fillOnErrorContainer,
                            child: _buildAppBar(context))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildTwentyNine(context),
                                  Divider(),
                                  Padding(
                                      padding: EdgeInsets.only(right: 4.h),
                                      child: _buildThirtyFour(context,
                                          promotionText: "lbl_promotion".tr,
                                          inviteFriendsText:
                                              "msg_invite_friends".tr)),
                                  Divider(),
                                  Padding(
                                      padding: EdgeInsets.only(right: 4.h),
                                      child: _buildThirtyFour(context,
                                          promotionText: "lbl_promotion".tr,
                                          inviteFriendsText:
                                              "msg_invite_friends".tr)),
                                  Divider(),
                                  _buildOval(context),
                                  _buildOne(context),
                                  _buildTelevision(context)
                                ])))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 116.v,
        title: Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(right: 186.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              SizedBox(height: 14.v),
              AppbarTitle(text: "lbl_notifications".tr)
            ])),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgThumbsUp,
              margin: EdgeInsets.fromLTRB(22.h, 47.v, 22.h, 25.v))
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(13.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark))),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.h, top: 2.v, bottom: 2.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_system".tr,
                                style: theme.textTheme.bodyLarge),
                            SizedBox(height: 4.v),
                            Text("msg_your_booking_1234".tr,
                                style: theme.textTheme.bodyLarge)
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildOval(BuildContext context) {
    return SizedBox(
        height: 90.v,
        width: 376.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 1.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.h, vertical: 19.v),
                    decoration: AppDecoration.fillWhiteA,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray5001,
                                  borderRadius: BorderRadius.circular(25.h))),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, top: 2.v, bottom: 2.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_system".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 4.v),
                                        Text("msg_your_booking_1205".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])))
                        ])),
                Divider()
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgClosePrimarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30.h))
        ]));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
        height: 90.v,
        width: 380.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgTrophy)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 2.v, bottom: 27.v),
                            child: Text("lbl_system".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 23.v),
                  child: Text("msg_thank_you_your".tr,
                      style: theme.textTheme.bodyLarge))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(width: 376.h, child: Divider()))
        ]));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return SizedBox(
        height: 90.v,
        width: 376.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildThirtyFour(context,
              promotionText: "lbl_promotion".tr,
              inviteFriendsText: "msg_invite_friends".tr),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(width: 376.h, child: Divider()))
        ]));
  }

  /// Common widget
  Widget _buildThirtyFour(
    BuildContext context, {
    required String promotionText,
    required String inviteFriendsText,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgTelevision))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.h, bottom: 2.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(promotionText,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(color: appTheme.blueGray900)),
                            SizedBox(height: 6.v),
                            Text(inviteFriendsText,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(color: appTheme.blueGray900))
                          ])))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
