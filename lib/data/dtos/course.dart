import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
final class Course extends Equatable {
  const Course({required this.title});

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  final String title;

  Map<String, dynamic> toJson() => _$CourseToJson(this);

  @override
  List<Object?> get props => [title];
}
