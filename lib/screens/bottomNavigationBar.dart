import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/home.dart';
import '../model/btn_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<BtnScreen> _btnScreen = <BtnScreen>[
    BtnScreen(widget: Home(), title: 'Home'),
    BtnScreen(widget: Home(), title: 'Search'),
    BtnScreen(widget: Home(), title: 'Courses'),
    BtnScreen(widget: Home(), title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F7FC),
        appBar: AppBar(
          title: Text(_btnScreen[_currentIndex].title),
          elevation: 0,
        ),
        body: _btnScreen[_currentIndex].widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int currentIndex) {
            print(currentIndex);
            setState(() {
              _currentIndex = currentIndex;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: const Color(0xff6F1848),
          selectedIconTheme: const IconThemeData(
            color: Color(0xff6F1848),
          ),
          unselectedItemColor: const Color(0xffC2C2C2),
          unselectedIconTheme: const IconThemeData(
            color: Color(0xffC2C2C2),
          ),
          selectedLabelStyle:
              GoogleFonts.cairo(fontWeight: FontWeight.w600, height: 2),
          unselectedLabelStyle:
              GoogleFonts.cairo(fontWeight: FontWeight.w400, height: 2),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                AssetImage('assets/images/exploreIcon.png'),
                size: 25,
              ),
              icon: ImageIcon(
                AssetImage('assets/images/exploreIcon.png'),
                size: 20,
              ),
              label: "explore",
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                  AssetImage('assets/images/SearchIconBottom.png'),
                  size: 25),
              icon: ImageIcon(
                AssetImage('assets/images/SearchIconBottom.png'),
                size: 20,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                  AssetImage('assets/images/CategoryIcons.png'),
                  size: 26),
              icon: ImageIcon(
                AssetImage('assets/images/CategoryIcons.png'),
                size: 23,
              ),
              label: "courses",
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(AssetImage('assets/images/ProfileIcon.png'),
                  size: 25),
              icon: ImageIcon(
                AssetImage('assets/images/ProfileIcon.png'),
                size: 20,
              ),
              label: "profile",
            ),
          ],
        ));
  }
}
