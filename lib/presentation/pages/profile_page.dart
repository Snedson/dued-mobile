import 'package:flutter/material.dart';
import 'package:snedson_dued/presentation/widgets/dued_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DuedHeader(
            title: 'Профиль',
          ),
        ],
      ),
    );
  }
}
