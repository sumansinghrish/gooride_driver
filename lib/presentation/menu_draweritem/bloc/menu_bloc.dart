import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/menu_draweritem/models/menu_model.dart';
part 'menu_event.dart';
part 'menu_state.dart';

/// A bloc that manages the state of a Menu according to the event that is dispatched to it.
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc(MenuState initialState) : super(initialState) {
    on<MenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MenuInitialEvent event,
    Emitter<MenuState> emit,
  ) async {}
}
