import 'package:flutter/material.dart';
import 'package:gooridedriver/presentation/splash_screens_screen/splash_screens_screen.dart';
import 'package:gooridedriver/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:gooridedriver/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:gooridedriver/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:gooridedriver/presentation/setup_gps_locations_screen/setup_gps_locations_screen.dart';
import 'package:gooridedriver/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:gooridedriver/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:gooridedriver/presentation/phone_verify_screen/phone_verify_screen.dart';
import 'package:gooridedriver/presentation/home_screen/home_screen.dart';
import 'package:gooridedriver/presentation/all_requests_screen/all_requests_screen.dart';
import 'package:gooridedriver/presentation/pick_up_screen/pick_up_screen.dart';
import 'package:gooridedriver/presentation/accept_requests_screen/accept_requests_screen.dart';
import 'package:gooridedriver/presentation/otp_and_fare_screen/otp_and_fare_screen.dart';
import 'package:gooridedriver/presentation/drop_off_screen/drop_off_screen.dart';
import 'package:gooridedriver/presentation/my_history_screen/my_history_screen.dart';
import 'package:gooridedriver/presentation/notifications_screen/notifications_screen.dart';
import 'package:gooridedriver/presentation/message_screen/message_screen.dart';
import 'package:gooridedriver/presentation/invite_friends_one_screen/invite_friends_one_screen.dart';
import 'package:gooridedriver/presentation/invite_friends_screen/invite_friends_screen.dart';
import 'package:gooridedriver/presentation/settings_screen/settings_screen.dart';
import 'package:gooridedriver/presentation/my_account_screen/my_account_screen.dart';
import 'package:gooridedriver/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:gooridedriver/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:gooridedriver/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreensScreen = '/splash_screens_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String setupGpsLocationsScreen = '/setup_gps_locations_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String phoneVerifyScreen = '/phone_verify_screen';

  static const String homeScreen = '/home_screen';

  static const String allRequestsScreen = '/all_requests_screen';

  static const String pickUpScreen = '/pick_up_screen';

  static const String acceptRequestsScreen = '/accept_requests_screen';

  static const String otpAndFareScreen = '/otp_and_fare_screen';

  static const String dropOffScreen = '/drop_off_screen';

  static const String myHistoryScreen = '/my_history_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String messageScreen = '/message_screen';

  static const String inviteFriendsOneScreen = '/invite_friends_one_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String settingsScreen = '/settings_screen';

  static const String myAccountScreen = '/my_account_screen';

  static const String myWalletScreen = '/my_wallet_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreensScreen: SplashScreensScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        setupGpsLocationsScreen: SetupGpsLocationsScreen.builder,
        signUpScreen: SignUpScreen.builder,
        signInScreen: SignInScreen.builder,
        phoneVerifyScreen: PhoneVerifyScreen.builder,
        homeScreen: HomeScreen.builder,
        allRequestsScreen: AllRequestsScreen.builder,
        pickUpScreen: PickUpScreen.builder,
        acceptRequestsScreen: AcceptRequestsScreen.builder,
        otpAndFareScreen: OtpAndFareScreen.builder,
        dropOffScreen: DropOffScreen.builder,
        myHistoryScreen: MyHistoryScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        messageScreen: MessageScreen.builder,
        inviteFriendsOneScreen: InviteFriendsOneScreen.builder,
        inviteFriendsScreen: InviteFriendsScreen.builder,
        settingsScreen: SettingsScreen.builder,
        myAccountScreen: MyAccountScreen.builder,
        myWalletScreen: MyWalletScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreensScreen.builder
      };
}
