import 'package:flutter/material.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/presentation/pages/course_page.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course.title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            Text(
              [
                if (course.relatedForEducationLevels.isNotEmpty) course.relatedForEducationLevels.join(', '),
                '${course.academicWorkloadInHoursPerWeek} час в неделю',
              ].join(' • '),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => CoursePage(course: course)),
                ),
                child: const Text('Открыть'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
