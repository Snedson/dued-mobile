import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snedson_dued/presentation/blocs/courses/courses_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CoursesCubit, CoursesState>(
        listener: (context, state) {
          if (state is CoursesInitial) {
            context.read<CoursesCubit>().loadCourses();
          }
        },
        builder: (context, state) => switch (state) {
          CoursesInitial() => const SizedBox(),
          CoursesLoading() => const Center(child: CircularProgressIndicator.adaptive()),
          CoursesLoaded() => Center(
              child: Text('Loaded ${state.courses}', textAlign: TextAlign.center),
            ),
          CoursesError() => Center(child: Text('Error ${state.error}')),
        },
      ),
    );
  }
}
