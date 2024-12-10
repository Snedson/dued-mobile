import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:snedson_dued/core/utils/utils.dart';
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
      builder: (context, constraints) => isScreenWide(constraints) ? _sideNavbarView() : _bottomNavbarView(),
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
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.search, weight: 700),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.conversion_path, weight: 700),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Symbols.person_raised_hand, weight: 700),
                label: Text(''),
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
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          NavigationDestination(
            icon: Icon(Symbols.home, weight: 700),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Symbols.search, weight: 700),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Symbols.conversion_path, weight: 700),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Symbols.person_raised_hand, weight: 700),
            label: '',
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
