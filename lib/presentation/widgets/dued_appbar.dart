import 'package:flutter/material.dart';

class DuedAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DuedAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset('assets/images/dued_logo.png', width: 30, height: 30),
          const SizedBox(width: 8),
          const Text('Dued', style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
