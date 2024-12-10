import 'package:flutter/material.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/data/dtos/lesson.dart';
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
            child: SizedBox(
              width: 980,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course.description),
                  const SizedBox(height: 16),
                  const Text('Содержание курса', style: TextStyle(fontSize: 20)),
                  Card(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            border: TableBorder(
                                horizontalInside: BorderSide(
                              color: Theme.of(context).colorScheme.outlineVariant,
                            )),
                            columnWidths: const {
                              0: FixedColumnWidth(50),
                            },
                            children: [
                              const TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Text('№', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600)),
                                  ),
                                  Text('Тема урока', style: TextStyle(fontWeight: FontWeight.w600)),
                                  Text('Дата проведения', style: TextStyle(fontWeight: FontWeight.w600)),
                                ],
                              ),
                              ...(course.lessons ?? []).asMap().entries.map((entry) {
                                final (int number, Lesson lesson) = (entry.key + 1, entry.value);

                                return TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text('$number', textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(lesson.title),
                                  ),
                                  Text(lesson.date),
                                ]);
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
