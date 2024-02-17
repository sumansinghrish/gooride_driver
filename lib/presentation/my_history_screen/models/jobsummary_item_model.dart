import '../../../core/app_export.dart';

/// This class is used in the [jobsummary_item_widget] screen.
class JobsummaryItemModel {
  JobsummaryItemModel({
    this.jobImage,
    this.jobTitle,
    this.jobCount,
    this.id,
  }) {
    jobImage = jobImage ?? ImageConstant.imgIcons8Car301;
    jobTitle = jobTitle ?? "Total Jobs";
    jobCount = jobCount ?? "10";
    id = id ?? "";
  }

  String? jobImage;

  String? jobTitle;

  String? jobCount;

  String? id;
}
