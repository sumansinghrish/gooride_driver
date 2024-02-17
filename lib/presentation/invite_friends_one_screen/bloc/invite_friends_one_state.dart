// ignore_for_file: must_be_immutable

part of 'invite_friends_one_bloc.dart';

/// Represents the state of InviteFriendsOne in the application.
class InviteFriendsOneState extends Equatable {
  InviteFriendsOneState({
    this.weightController,
    this.inviteFriendsOneModelObj,
  });

  TextEditingController? weightController;

  InviteFriendsOneModel? inviteFriendsOneModelObj;

  @override
  List<Object?> get props => [
        weightController,
        inviteFriendsOneModelObj,
      ];
  InviteFriendsOneState copyWith({
    TextEditingController? weightController,
    InviteFriendsOneModel? inviteFriendsOneModelObj,
  }) {
    return InviteFriendsOneState(
      weightController: weightController ?? this.weightController,
      inviteFriendsOneModelObj:
          inviteFriendsOneModelObj ?? this.inviteFriendsOneModelObj,
    );
  }
}
