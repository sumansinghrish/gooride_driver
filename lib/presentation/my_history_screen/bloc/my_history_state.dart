// ignore_for_file: must_be_immutable

part of 'my_history_bloc.dart';

/// Represents the state of MyHistory in the application.
class MyHistoryState extends Equatable {
  MyHistoryState({this.myHistoryModelObj});

  MyHistoryModel? myHistoryModelObj;

  @override
  List<Object?> get props => [
        myHistoryModelObj,
      ];
  MyHistoryState copyWith({MyHistoryModel? myHistoryModelObj}) {
    return MyHistoryState(
      myHistoryModelObj: myHistoryModelObj ?? this.myHistoryModelObj,
    );
  }
}
