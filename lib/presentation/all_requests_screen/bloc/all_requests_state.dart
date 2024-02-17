// ignore_for_file: must_be_immutable

part of 'all_requests_bloc.dart';

/// Represents the state of AllRequests in the application.
class AllRequestsState extends Equatable {
  AllRequestsState({
    this.swiftVillageController,
    this.kobeTrafficwayController,
    this.soedadPortsController,
    this.allRequestsModelObj,
  });

  TextEditingController? swiftVillageController;

  TextEditingController? kobeTrafficwayController;

  TextEditingController? soedadPortsController;

  AllRequestsModel? allRequestsModelObj;

  @override
  List<Object?> get props => [
        swiftVillageController,
        kobeTrafficwayController,
        soedadPortsController,
        allRequestsModelObj,
      ];
  AllRequestsState copyWith({
    TextEditingController? swiftVillageController,
    TextEditingController? kobeTrafficwayController,
    TextEditingController? soedadPortsController,
    AllRequestsModel? allRequestsModelObj,
  }) {
    return AllRequestsState(
      swiftVillageController:
          swiftVillageController ?? this.swiftVillageController,
      kobeTrafficwayController:
          kobeTrafficwayController ?? this.kobeTrafficwayController,
      soedadPortsController:
          soedadPortsController ?? this.soedadPortsController,
      allRequestsModelObj: allRequestsModelObj ?? this.allRequestsModelObj,
    );
  }
}
