import 'package:flutter/material.dart';
import 'package:snedson_dued/presentation/pages/home_page.dart';
import 'package:snedson_dued/presentation/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/dued_logo.png', width: 30, height: 30),
            const SizedBox(width: 8),
            const Text('Dued', style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      body: _pages[_pageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (value) => setState(() => _pageIndex = value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_outlined),
            label: 'Courses',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

const _pages = <Widget>[
  HomePage(),
  SearchPage(),
  Center(child: Text('Courses')),
  Center(child: Text('Profile')),
];
