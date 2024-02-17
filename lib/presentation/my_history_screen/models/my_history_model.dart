// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'jobsummary_item_model.dart';

/// This class defines the variables used in the [my_history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyHistoryModel extends Equatable {
  MyHistoryModel({this.jobsummaryItemList = const []}) {}

  List<JobsummaryItemModel> jobsummaryItemList;

  MyHistoryModel copyWith({List<JobsummaryItemModel>? jobsummaryItemList}) {
    return MyHistoryModel(
      jobsummaryItemList: jobsummaryItemList ?? this.jobsummaryItemList,
    );
  }

  @override
  List<Object?> get props => [jobsummaryItemList];
}
