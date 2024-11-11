import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:snedson_dued/data/dtos/course.dart';

part 'courses_repo.g.dart';

sealed class CoursesRepo {
  const CoursesRepo();
  Future<List<Course>> getCourses();
}

@RestApi(baseUrl: 'https://dev.dued.snedson.com/api/v1/')
abstract class CoursesApiRepo extends CoursesRepo {
  factory CoursesApiRepo(Dio dio, {String? baseUrl}) = _CoursesApiRepo;

  @GET('/Courses')
  @override
  Future<List<Course>> getCourses();
}

final class CoursesMockRepo extends CoursesRepo {
  CoursesMockRepo(this.apiClient);
  final Dio apiClient;

  List<Course>? _cachedResult;

  @override
  Future<List<Course>> getCourses() async {
    if (_cachedResult == null) {
      await Future.delayed(const Duration(seconds: 2));
      _cachedResult = [const Course(title: 'course')];
    }

    return _cachedResult!;
  }
}
