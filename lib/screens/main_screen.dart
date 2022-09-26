import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:vectracom/screens/home_page.dart';
import 'package:vectracom/screens/login_page.dart';
import 'package:vectracom/screens/settings_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex =0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  List<Widget> screens= const[
    HomePage(),
    LoginPage(),
    SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: screens
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BottomNavyBar(
          showElevation: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedIndex: _currentIndex,
          curve: Curves.easeInCirc,

          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: const Text('Home'),
                icon:  const Icon(Icons.home)
            ),
            BottomNavyBarItem(
                title: const Text('Login'),
                icon:  const Icon(Icons.login)
            ),

            BottomNavyBarItem(
                title: const Text('Settings'),
                icon: const Icon(Icons.settings)
            ),
          ],
        ),
      ),
    );
  }
}
