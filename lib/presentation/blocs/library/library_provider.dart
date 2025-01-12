import 'package:flutter/material.dart';
import 'package:snedson_dued/data/dtos/course.dart';

class LibraryProvider extends ChangeNotifier {
  final List<Course> _courses = [];
  List<Course> get courses => List.unmodifiable(_courses);

  void addCourse(Course course) {
    _courses.add(course);
    notifyListeners();
  }

  void removeCourse(Course course) {
    _courses.remove(course);
    notifyListeners();
  }

  void clearCourses() {
    _courses.clear();
    notifyListeners();
  }
}
