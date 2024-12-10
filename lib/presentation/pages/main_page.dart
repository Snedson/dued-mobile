import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:snedson_dued/presentation/pages/home_page.dart';
import 'package:snedson_dued/presentation/pages/profile_page.dart';
import 'package:snedson_dued/presentation/pages/search_page.dart';
import 'package:snedson_dued/presentation/widgets/dued_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return _bottomNavbarView();
        }
        return _sideNavbarView();
      },
    );
  }

  Scaffold _sideNavbarView() {
    return Scaffold(
      appBar: const DuedAppbar(),
      body: Row(
        children: [
          NavigationRail(
            groupAlignment: 0,
            // leading: const Spacer(),
            // trailing: Expanded(
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: IconButton(
            //       onPressed: () => Navigator.of(context).push(
            //         MaterialPageRoute(builder: (_) => const ProfilePage()),
            //       ),
            //       icon: const Icon(Icons.account_circle_outlined),
            //     ),
            //   ),
            // ),
            onDestinationSelected: (value) => setState(() => _pageIndex = value),
            minWidth: 90,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Symbols.home, weight: 700),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.search, weight: 700),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.conversion_path, weight: 700),
                label: Text('Courses'),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.person_raised_hand, weight: 700),
                label: Text('Profile'),
              ),
            ],
            selectedIndex: _pageIndex,
          ),
          Expanded(child: _pages[_pageIndex]),
        ],
      ),
    );
  }

  Scaffold _bottomNavbarView() {
    return Scaffold(
      appBar: const DuedAppbar(),
      body: _pages[_pageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (value) => setState(() => _pageIndex = value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Symbols.home, weight: 700),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Symbols.search, weight: 700),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Symbols.conversion_path, weight: 700),
            label: 'Courses',
          ),
          NavigationDestination(
            icon: Icon(Symbols.person_raised_hand, weight: 700),
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
  ProfilePage(),
];
