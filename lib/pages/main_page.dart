import 'package:flutter/material.dart';
import 'package:sih/config/app_strings.dart';
import 'package:sih/pages/favorite_page.dart';
import 'package:sih/pages/home_page.dart';
import 'package:sih/pages/profile_page.dart';
import 'package:sih/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int presentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[presentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 37, 37, 48),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: AppStrings.favorites,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: AppStrings.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: AppStrings.user,
          ),
        ],
        currentIndex: presentIndex,
        onTap: (index) {
          setState(
            () {
              presentIndex = index;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  final pages = [
    HomePage(),
    FavoritePage(),
    SearchPage(),
    ProfilePage(),
  ];
}
