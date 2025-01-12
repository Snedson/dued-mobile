import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';
import 'package:snedson_dued/injection.dart';
import 'package:snedson_dued/presentation/blocs/auth/auth_provider.dart';
import 'package:snedson_dued/presentation/blocs/courses/courses_cubit.dart';
import 'package:snedson_dued/presentation/blocs/library/library_provider.dart';
import 'package:snedson_dued/presentation/pages/auth_page.dart';
import 'package:snedson_dued/presentation/pages/main_page.dart';

void main() async {
  await injectDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LibraryProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CoursesCubit(repo: getIt.get<CoursesRepo>()))],
      child: CalendarControllerProvider(
        controller: EventController(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(214, 94, 221, 1)),
            useMaterial3: true,
          ),
          home: Consumer<AuthProvider>(builder: (context, provider, child) {
            if (!provider.isAuthenticated) {
              return const AuthPage();
            }
            context.read<CoursesCubit>().loadCourses();
            return const MainPage();
          }),
        ),
      ),
    );
  }
}
