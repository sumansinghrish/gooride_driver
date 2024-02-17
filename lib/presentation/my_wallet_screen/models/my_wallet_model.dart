// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [my_wallet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWalletModel extends Equatable {
  MyWalletModel({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  MyWalletModel copyWith({List<UserprofileItemModel>? userprofileItemList}) {
    return MyWalletModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
