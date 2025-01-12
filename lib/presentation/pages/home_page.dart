import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:snedson_dued/data/dtos/course.dart';
import 'package:snedson_dued/presentation/pages/course_page.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   backgroundColor: Theme.of(context).cardColor,
        //   appBar: const DuedAppbar(),
        //   body: const Padding(
        //     padding: EdgeInsets.all(16),
        //     child: SafeArea(child: WeekView(), ),
        //   ),

        Column(
      children: [
        const DuedHeader(
          title: 'С возвращением в Dued!',
          subtitle: 'Это ваш календарный план',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          // child: LayoutBuilder(
          //   builder: (context, constraints) => SizedBox(
          //     height: constraints.maxHeight,
          //     child: const WeekView(),
          //   ),
          // ),
          child: SizedBox(
            width: 980,
            height: 500,
            child: WeekView(
              onEventTap: (events, date) {
                if (events.isNotEmpty && events.first.event is Course) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoursePage(course: events.first.event as Course),
                  ));
                }
              },
              backgroundColor: Theme.of(context).cardColor,
            ),
          ),
        ),
      ],
    );
  }
}
