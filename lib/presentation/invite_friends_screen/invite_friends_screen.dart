import 'bloc/invite_friends_bloc.dart';
import 'models/invite_friends_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_search_view.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InviteFriendsBloc>(
        create: (context) => InviteFriendsBloc(
            InviteFriendsState(inviteFriendsModelObj: InviteFriendsModel()))
          ..add(InviteFriendsInitialEvent()),
        child: InviteFriendsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 768.v,
                width: 378.h,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildInviteFriends(context),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 1.h, bottom: 40.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_mueen".tr,
                                        plus: ImageConstant
                                            .imgCheckmarkWhiteA700)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_amir_hodges".tr)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_ali_hammond".tr,
                                        plus: ImageConstant
                                            .imgCheckmarkWhiteA700)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_dora_khan".tr,
                                        plus: ImageConstant
                                            .imgCheckmarkWhiteA700)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_urooj".tr)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_saim".tr)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_naila".tr)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: _buildOval(context,
                                        userName: "lbl_russell_mcguire".tr)),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(
                                        color: appTheme.gray200, indent: 64.h))
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 768.v,
        leadingWidth: 378.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 13.v, 350.h, 735.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildInviteFriends(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
            decoration: AppDecoration.fillAmber,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 20.v,
                            width: 12.h,
                            margin: EdgeInsets.only(top: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 100.h),
                            child: Text("lbl_invite_friends".tr,
                                style: CustomTextStyles.bodyLargeWhiteA70019))
                      ])),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<InviteFriendsBloc, InviteFriendsState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr);
                          }))
                ])));
  }

  /// Common widget
  Widget _buildOval(
    BuildContext context, {
    required String userName,
    required String plus,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgOval1,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h)),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 14.v),
          child: Text(userName,
              style: CustomTextStyles.bodyMediumRobotoGray90015
                  .copyWith(color: appTheme.gray900))),
      Spacer(),
      Container(
          margin: EdgeInsets.symmetric(vertical: 9.v),
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
          decoration: AppDecoration.fillAmber
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
          child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              decoration: AppDecoration.fillGray900,
              child: CustomImageView(
                  imagePath: plus,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  alignment: Alignment.center)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
