import 'package:flutter/material.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: const Column(
        children: [
          DuedHeader(
            title: 'С возвращением в Dued!',
            subtitle: 'Это ваш календарный план',
          ),
        ],
      ),
    );
  }
}
