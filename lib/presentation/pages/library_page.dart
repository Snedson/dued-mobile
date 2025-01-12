import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snedson_dued/presentation/blocs/library/library_provider.dart';
import 'package:snedson_dued/presentation/widgets/course_card.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DuedHeader(title: 'Библиотека'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Consumer<LibraryProvider>(builder: (context, provider, child) {
                if (provider.courses.isNotEmpty) {
                  return ListView.builder(
                    itemCount: provider.courses.length,
                    itemBuilder: (context, index) => CourseCard(course: provider.courses[index]),
                  );
                }
                return Column(
                  children: [
                    const Spacer(),
                    Text(
                      'Здесь будут все ваши сохраненные курсы',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
