import 'package:flutter/material.dart';

class DuedHeader extends StatelessWidget {
  const DuedHeader({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: Image.asset(
            'assets/images/welcome_bg.png',
            fit: BoxFit.cover,
            height: 140,
          ),
        ),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ],
    );
  }
}
