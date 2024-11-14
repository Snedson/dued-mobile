import 'package:flutter/material.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/presentation/widgets/dued_appbar.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DuedAppbar(),
      body: Column(
        children: [
          DuedHeader(
            title: course.title,
            subtitle: 'Подробнее о курсе',
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.description),
                const SizedBox(height: 16),
                const Text('Содержание курса', style: TextStyle(fontSize: 20)),
                Card(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course.lessons.toString()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
