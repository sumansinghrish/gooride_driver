import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/splash_screens_screen/models/splash_screens_model.dart';
part 'splash_screens_event.dart';
part 'splash_screens_state.dart';

/// A bloc that manages the state of a SplashScreens according to the event that is dispatched to it.
class SplashScreensBloc extends Bloc<SplashScreensEvent, SplashScreensState> {
  SplashScreensBloc(SplashScreensState initialState) : super(initialState) {
    on<SplashScreensInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashScreensInitialEvent event,
    Emitter<SplashScreensState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.onboardingOneScreen,
      );
    });
  }
}
