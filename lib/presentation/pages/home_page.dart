import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:snedson_dued/presentation/widgets/dued_appbar.dart';
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

        const Column(
      children: [
        DuedHeader(
          title: 'С возвращением в Dued!',
          subtitle: 'Это ваш календарный план',
        ),
        Padding(
          padding: EdgeInsets.all(16),
          // child: LayoutBuilder(
          //   builder: (context, constraints) => SizedBox(
          //     height: constraints.maxHeight,
          //     child: const WeekView(),
          //   ),
          // ),
          child: SizedBox(
            width: 980,
            height: 600,
            child: WeekView(),
          ),
        ),
      ],
    );
  }
}
