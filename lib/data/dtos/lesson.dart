import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.g.dart';
part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String title,
    required String date,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
