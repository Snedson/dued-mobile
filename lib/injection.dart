import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';

bool _hasInjected = false;

final getIt = GetIt.I;

Future<void> injectDependencies() async {
  if (_hasInjected) throw Error.throwWithStackTrace('Dependencies already injected', StackTrace.current);

  final apiClient = Dio();

  getIt.registerSingleton<CoursesRepo>(CoursesMockRepo(apiClient));
}
