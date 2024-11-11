import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  'assets/images/welcome_bg.png',
                  fit: BoxFit.cover,
                  height: 160,
                ),
              ),
              const Column(
                children: [
                  Text(
                    'С возвращением в Dued!',
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Это ваш календарный план',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
