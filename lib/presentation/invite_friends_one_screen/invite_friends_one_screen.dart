import 'bloc/invite_friends_one_bloc.dart';
import 'models/invite_friends_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_elevated_button.dart';
import 'package:gooridedriver/widgets/custom_text_form_field.dart';

class InviteFriendsOneScreen extends StatelessWidget {
  const InviteFriendsOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InviteFriendsOneBloc>(
        create: (context) => InviteFriendsOneBloc(InviteFriendsOneState(
            inviteFriendsOneModelObj: InviteFriendsOneModel()))
          ..add(InviteFriendsOneInitialEvent()),
        child: InviteFriendsOneScreen());
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
                    child: SizedBox(
                        height: 770.v,
                        width: 383.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildShareCode(context),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  decoration: AppDecoration.fillAmber,
                                  child: Container(
                                      width: 383.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: fs.Svg(
                                                  ImageConstant.imgGroup92),
                                              fit: BoxFit.cover)),
                                      child: Column(children: [
                                        _buildArrowLeft(context),
                                        SizedBox(height: 6.v),
                                        Container(
                                            width: 322.h,
                                            margin: EdgeInsets.only(
                                                left: 34.h, right: 26.h),
                                            child: Text(
                                                "msg_when_your_friend".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        SizedBox(height: 28.v)
                                      ]))))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 768.v,
        leadingWidth: 383.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(24.h, 13.v, 347.h, 735.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildShareCode(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 46.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_share_your_invite".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 24.v),
                  BlocSelector<InviteFriendsOneBloc, InviteFriendsOneState,
                          TextEditingController?>(
                      selector: (state) => state.weightController,
                      builder: (context, weightController) {
                        return CustomTextFormField(
                            controller: weightController,
                            hintText: "lbl_y045kg".tr,
                            hintStyle: theme.textTheme.headlineSmall!,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 5.v, 3.h, 19.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgTwitter,
                                    height: 20.v,
                                    width: 16.h)),
                            suffixConstraints: BoxConstraints(maxHeight: 44.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineBlueGray);
                      }),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                      text: "lbl_invite_friends".tr,
                      buttonStyle: CustomButtonStyles.fillAmber,
                      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700_1),
                  SizedBox(height: 16.v)
                ])));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
        height: 401.v,
        width: 376.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 20.v,
                            width: 12.h,
                            margin: EdgeInsets.only(top: 1.v, bottom: 379.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Column(children: [
                                  Text("lbl_invite_friends".tr,
                                      style: CustomTextStyles
                                          .bodyLargeWhiteA70019),
                                  SizedBox(height: 300.v),
                                  SizedBox(
                                      width: 283.h,
                                      child: Text("msg_invite_friends_get".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .headlineLargeRobotoBluegray900))
                                ])))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgArtwork,
              height: 326.v,
              width: 376.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 6.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
