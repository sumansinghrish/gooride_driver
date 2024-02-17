// ignore_for_file: must_be_immutable

part of 'splash_screens_bloc.dart';

/// Represents the state of SplashScreens in the application.
class SplashScreensState extends Equatable {
  SplashScreensState({this.splashScreensModelObj});

  SplashScreensModel? splashScreensModelObj;

  @override
  List<Object?> get props => [
        splashScreensModelObj,
      ];
  SplashScreensState copyWith({SplashScreensModel? splashScreensModelObj}) {
    return SplashScreensState(
      splashScreensModelObj:
          splashScreensModelObj ?? this.splashScreensModelObj,
    );
  }
}
