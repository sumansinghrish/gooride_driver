// ignore_for_file: must_be_immutable

part of 'splash_screens_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashScreens widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashScreensEvent extends Equatable {}

/// Event that is dispatched when the SplashScreens widget is first created.
class SplashScreensInitialEvent extends SplashScreensEvent {
  @override
  List<Object?> get props => [];
}
