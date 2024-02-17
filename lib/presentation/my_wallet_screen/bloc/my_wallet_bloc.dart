import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:gooridedriver/presentation/my_wallet_screen/models/my_wallet_model.dart';
part 'my_wallet_event.dart';
part 'my_wallet_state.dart';

/// A bloc that manages the state of a MyWallet according to the event that is dispatched to it.
class MyWalletBloc extends Bloc<MyWalletEvent, MyWalletState> {
  MyWalletBloc(MyWalletState initialState) : super(initialState) {
    on<MyWalletInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return List.generate(1, (index) => UserprofileItemModel());
  }

  _onInitialize(
    MyWalletInitialEvent event,
    Emitter<MyWalletState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        myWalletModelObj: state.myWalletModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}
