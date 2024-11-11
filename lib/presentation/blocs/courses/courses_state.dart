part of 'courses_cubit.dart';

sealed class CoursesState extends Equatable {
  const CoursesState._();
  const factory CoursesState.initial() = CoursesInitial._;
  const factory CoursesState.loading() = CoursesLoading._;
  const factory CoursesState.loaded({required List<Course> courses}) = CoursesLoaded._;
  const factory CoursesState.error([String? error]) = CoursesError._;
}

final class CoursesInitial extends CoursesState {
  const CoursesInitial._() : super._();
  @override
  List<Object?> get props => [];
}

final class CoursesLoading extends CoursesState {
  const CoursesLoading._() : super._();
  @override
  List<Object?> get props => [];
}

final class CoursesLoaded extends CoursesState {
  const CoursesLoaded._({required this.courses}) : super._();
  final List<Course> courses;
  @override
  List<Object?> get props => [courses];
}

final class CoursesError extends CoursesState {
  const CoursesError._([this.error]) : super._();
  final String? error;
  @override
  List<Object?> get props => [error];
}
