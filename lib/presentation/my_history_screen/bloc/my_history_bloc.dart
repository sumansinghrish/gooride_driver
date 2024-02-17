import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/jobsummary_item_model.dart';
import 'package:gooridedriver/presentation/my_history_screen/models/my_history_model.dart';
part 'my_history_event.dart';
part 'my_history_state.dart';

/// A bloc that manages the state of a MyHistory according to the event that is dispatched to it.
class MyHistoryBloc extends Bloc<MyHistoryEvent, MyHistoryState> {
  MyHistoryBloc(MyHistoryState initialState) : super(initialState) {
    on<MyHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyHistoryInitialEvent event,
    Emitter<MyHistoryState> emit,
  ) async {
    emit(state.copyWith(
        myHistoryModelObj: state.myHistoryModelObj
            ?.copyWith(jobsummaryItemList: fillJobsummaryItemList())));
  }

  List<JobsummaryItemModel> fillJobsummaryItemList() {
    return [
      JobsummaryItemModel(
          jobImage: ImageConstant.imgIcons8Car301,
          jobTitle: "Total Jobs",
          jobCount: "10"),
      JobsummaryItemModel(
          jobImage: ImageConstant.imgIcons8Car302,
          jobTitle: "Earned",
          jobCount: "325.00")
    ];
  }
}
