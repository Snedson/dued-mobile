import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/presentation/blocs/courses/courses_cubit.dart';
import 'package:snedson_dued/presentation/widgets/course_card.dart';

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
          CoursesLoaded() => _buildLoaded(state.courses),
          CoursesError() => Center(child: Text('Error ${state.error}')),
        },
      ),
    );
  }

  Widget _buildLoaded(List<Course> courses) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: courses.map((c) => CourseCard(course: c)).toList(),
      ),
    );
  }
}
