// ignore_for_file: must_be_immutable

part of 'my_wallet_bloc.dart';

/// Represents the state of MyWallet in the application.
class MyWalletState extends Equatable {
  MyWalletState({
    this.sliderIndex = 0,
    this.myWalletModelObj,
  });

  MyWalletModel? myWalletModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        myWalletModelObj,
      ];
  MyWalletState copyWith({
    int? sliderIndex,
    MyWalletModel? myWalletModelObj,
  }) {
    return MyWalletState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      myWalletModelObj: myWalletModelObj ?? this.myWalletModelObj,
    );
  }
}
