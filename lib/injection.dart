import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';

bool _hasInjected = false;

final getIt = GetIt.I;

Future<void> injectDependencies() async {
  if (_hasInjected) throw Error.throwWithStackTrace('Dependencies already injected', StackTrace.current);

  final dio = Dio()..interceptors.add(PrettyDioLogger());

  getIt.registerSingleton<CoursesRepo>(CoursesApiRepo(dio));
}
