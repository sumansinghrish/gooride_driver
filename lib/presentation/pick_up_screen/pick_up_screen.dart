import 'bloc/pick_up_bloc.dart';
import 'models/pick_up_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_leading_image.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:gooridedriver/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:gooridedriver/widgets/app_bar/custom_app_bar.dart';
import 'package:gooridedriver/widgets/custom_floating_button.dart';

class PickUpScreen extends StatelessWidget {
  const PickUpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PickUpBloc>(
      create: (context) => PickUpBloc(PickUpState(
        pickUpModelObj: PickUpModel(),
      ))
        ..add(PickUpInitialEvent()),
      child: PickUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickUpBloc, PickUpState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup67,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(
                      flex: 48,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinPrimarycontainer,
                      height: 60.v,
                      width: 38.h,
                    ),
                    Spacer(
                      flex: 51,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildPickupSection(context),
            floatingActionButton: _buildFloatingActionButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons8TurnRight24,
        margin: EdgeInsets.only(
          left: 36.h,
          top: 14.v,
          bottom: 15.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
          children: [
            AppbarSubtitleThree(
              text: "lbl_250m".tr,
            ),
            AppbarSubtitleFour(
              text: "msg_turn_right_at_105".tr,
              margin: EdgeInsets.only(
                left: 36.h,
                top: 5.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildPickupSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 31.h,
        right: 134.h,
        bottom: 20.v,
      ),
      decoration: AppDecoration.fillAmber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Text(
              "lbl_e".tr,
              style: CustomTextStyles.titleLargeRobotoRegular22,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 8.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_pick_up_at".tr.toUpperCase(),
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  Text(
                    "msg_7958_swift_village2".tr.toUpperCase(),
                    style: theme.textTheme.titleSmall,
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
