import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit({required this.repo}) : super(const CoursesState.initial());

  final CoursesRepo repo;

  void loadCourses() async {
    emit(const CoursesState.loading());
    try {
      final courses = await repo.getCourses();
      if (!isClosed) emit(CoursesState.loaded(courses: courses));
    } catch (e) {
      if (!isClosed) emit(CoursesState.error(e.toString()));
    }
  }
}
