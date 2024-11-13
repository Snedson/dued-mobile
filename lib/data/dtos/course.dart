import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.g.dart';
part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required int id,
    required String title,
    required String description,
    required int startWeekMonthStamp,
    required int endWeekMonthStamp,
    required int academicWorkloadInHoursPerWeek,
    required String authorOrganizationFullname,
    required String authorOrganizationShortname,
    required List<String> relatedForEducationLevels,
    required int createdDate,
    required int lastReviewedDate,
    required Object? lessons,
    required Object? additionalFiles,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
