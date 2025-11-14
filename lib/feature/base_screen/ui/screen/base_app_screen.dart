import 'package:flutter/material.dart';
import 'package:revo/core/models/bottom_navigation_item.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/feature/add_property/ui/screen/add_property.dart';
import 'package:revo/feature/compound/ui/screen/compounds_screen.dart';
import 'package:revo/feature/home_screen/ui/screen/home_screen.dart';
import 'package:revo/feature/invest_screen/ui/screen/invest_screen.dart';
import 'package:revo/feature/profile_screen/ui/screen/profile_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;

  final List<BottomNavigationItem> _navigationItems = [
    BottomNavigationItem(
      icon: Icons.home_outlined,
      activeIcon: Icons.home_sharp,
      label: 'عقارات',
      page: const HomeScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.trending_up_rounded,
      activeIcon: Icons.attach_money,
      label: 'استثمر',
      page: const InvestScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.add_circle_outline,
      activeIcon: Icons.add_circle,
      label: 'إضافة',
      page: SizedBox.shrink(),
    ),
    BottomNavigationItem(
      icon: Icons.holiday_village_outlined,
      activeIcon: Icons.holiday_village,
      label: 'كومبوند',
      page:  CompoundsScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.menu_open_outlined,
      activeIcon: Icons.menu_open,
      label: 'المزيد',
      page: const ProfileScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    // لو زر الإضافة
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AddProperty(),
        ),
      );
      return;
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationItems[_currentIndex].page,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: _navigationItems.map((item) {
            return BottomNavigationBarItem(
              icon: Icon(item.icon),
              activeIcon: Icon(item.activeIcon),
              label: item.label,
            );
          }).toList(),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: ColorsManager.mainColor,
          unselectedItemColor: const Color.fromARGB(255, 98, 113, 114),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
          ),
          unselectedLabelStyle: const TextStyle(fontFamily: "Cairo"),
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
