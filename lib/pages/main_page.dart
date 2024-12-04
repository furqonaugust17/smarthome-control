import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smart_control/pages/home_screen.dart';
import 'package:smart_control/pages/ruangan_screen.dart';
import 'package:smart_control/pages/setting_screen.dart';
import 'package:smart_control/widgets/nav_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomeScreen(),
    RuanganScreen(),
    SettingScreen(),
  ];
  String _title = "SmartHome Control";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF718CCE),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: Container(
                padding: const EdgeInsets.all(18),
                child: AppBar(
                  backgroundColor: const Color(0xFF4A628A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text(
                    _title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: pages[selectedIndex],
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(14),
            height: 88,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (value) {
                    setState(() {
                      switch (value) {
                        case 0:
                          _title = "SmartHome Control";
                          break;
                        case 1:
                          _title = "Ruangan";
                          break;
                        case 2:
                          _title = "Setting";
                          break;
                        default:
                          _title = "SmartHome Control";
                          break;
                      }
                      selectedIndex = value;
                    });
                  },
                  selectedFontSize: 0,
                  unselectedFontSize: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: const Color(0xFF4A628A),
                  selectedItemColor: const Color(0xFF718CCE),
                  unselectedItemColor: Colors.white,
                  items: [
                    BottomNavigationBarItem(
                        icon: NavIcon(
                            selected: 0 == selectedIndex,
                            icon: MdiIcons.homeOutline),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: NavIcon(
                            selected: 1 == selectedIndex,
                            icon: MdiIcons.sitemapOutline),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: NavIcon(
                            selected: 2 == selectedIndex,
                            icon: MdiIcons.cogOutline),
                        label: ''),
                  ]),
            ),
          )),
    );
  }
}
