import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:gooridedriver/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Screens".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashScreensScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding #One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding #Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding #Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Setup GPS locations".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setupGpsLocationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign In".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Phone Verify".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.phoneVerifyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "All Requests".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.allRequestsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pick Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.pickUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Accept Requests".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.acceptRequestsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP And Fare".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.otpAndFareScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Drop off".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.dropOffScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myHistoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Message".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Invite Friends One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inviteFriendsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Invite Friends".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inviteFriendsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Account".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Wallet".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myWalletScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentMethodScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
