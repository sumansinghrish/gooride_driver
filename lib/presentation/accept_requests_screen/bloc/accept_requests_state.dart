// ignore_for_file: must_be_immutable

part of 'accept_requests_bloc.dart';

/// Represents the state of AcceptRequests in the application.
class AcceptRequestsState extends Equatable {
  AcceptRequestsState({
    this.pickupLocationController,
    this.pickupLocationThreeController,
    this.pickupLocationThreeController1,
    this.acceptRequestsModelObj,
  });

  TextEditingController? pickupLocationController;

  TextEditingController? pickupLocationThreeController;

  TextEditingController? pickupLocationThreeController1;

  AcceptRequestsModel? acceptRequestsModelObj;

  @override
  List<Object?> get props => [
        pickupLocationController,
        pickupLocationThreeController,
        pickupLocationThreeController1,
        acceptRequestsModelObj,
      ];
  AcceptRequestsState copyWith({
    TextEditingController? pickupLocationController,
    TextEditingController? pickupLocationThreeController,
    TextEditingController? pickupLocationThreeController1,
    AcceptRequestsModel? acceptRequestsModelObj,
  }) {
    return AcceptRequestsState(
      pickupLocationController:
          pickupLocationController ?? this.pickupLocationController,
      pickupLocationThreeController:
          pickupLocationThreeController ?? this.pickupLocationThreeController,
      pickupLocationThreeController1:
          pickupLocationThreeController1 ?? this.pickupLocationThreeController1,
      acceptRequestsModelObj:
          acceptRequestsModelObj ?? this.acceptRequestsModelObj,
    );
  }
}
