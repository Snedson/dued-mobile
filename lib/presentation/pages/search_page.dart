import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snedson_dued/data/repos/courses_repo.dart';
import 'package:snedson_dued/injection.dart';
import 'package:snedson_dued/presentation/blocs/courses/courses_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final CoursesCubit coursesCubit;

  @override
  void initState() {
    super.initState();
    coursesCubit = CoursesCubit(repo: getIt.get<CoursesRepo>())..loadCourses();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => coursesCubit,
      child: Scaffold(
        body: BlocConsumer<CoursesCubit, CoursesState>(
          listener: (context, state) {
            if (state is CoursesInitial) {
              context.read<CoursesCubit>().loadCourses();
            }
          },
          builder: (context, state) => switch (state) {
            CoursesInitial() => const SizedBox(),
            CoursesLoading() => const Center(child: CircularProgressIndicator.adaptive()),
            CoursesLoaded() => Center(child: Text('Loaded ${state.courses}')),
            CoursesError() => Center(child: Text('Error ${state.error}')),
          },
        ),
      ),
    );
  }
}
