// ignore_for_file: must_be_immutable

part of 'setup_gps_locations_bloc.dart';

/// Represents the state of SetupGpsLocations in the application.
class SetupGpsLocationsState extends Equatable {
  SetupGpsLocationsState({this.setupGpsLocationsModelObj});

  SetupGpsLocationsModel? setupGpsLocationsModelObj;

  @override
  List<Object?> get props => [
        setupGpsLocationsModelObj,
      ];
  SetupGpsLocationsState copyWith(
      {SetupGpsLocationsModel? setupGpsLocationsModelObj}) {
    return SetupGpsLocationsState(
      setupGpsLocationsModelObj:
          setupGpsLocationsModelObj ?? this.setupGpsLocationsModelObj,
    );
  }
}
