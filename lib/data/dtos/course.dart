import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
final class Course extends Equatable {
  const Course({required this.name});

  factory Course.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  List<Object?> get props => [name];
}
