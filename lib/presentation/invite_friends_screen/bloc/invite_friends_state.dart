// ignore_for_file: must_be_immutable

part of 'invite_friends_bloc.dart';

/// Represents the state of InviteFriends in the application.
class InviteFriendsState extends Equatable {
  InviteFriendsState({
    this.searchController,
    this.inviteFriendsModelObj,
  });

  TextEditingController? searchController;

  InviteFriendsModel? inviteFriendsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inviteFriendsModelObj,
      ];
  InviteFriendsState copyWith({
    TextEditingController? searchController,
    InviteFriendsModel? inviteFriendsModelObj,
  }) {
    return InviteFriendsState(
      searchController: searchController ?? this.searchController,
      inviteFriendsModelObj:
          inviteFriendsModelObj ?? this.inviteFriendsModelObj,
    );
  }
}
