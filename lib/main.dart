import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';
import 'package:snedson_dued/injection.dart';
import 'package:snedson_dued/presentation/blocs/courses/courses_cubit.dart';
import 'package:snedson_dued/presentation/pages/main_page.dart';

void main() async {
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CoursesCubit(repo: getIt.get<CoursesRepo>())..loadCourses())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(214, 94, 221, 1)),
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
