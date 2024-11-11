import 'package:flutter/material.dart';
import 'package:snedson_dued/injection.dart';
import 'package:snedson_dued/presentation/pages/main_page.dart';

void main() async {
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(214, 94, 221, 1)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
