import 'package:flutter/material.dart';
import 'package:revo/feature/add_building/ui/screen/add_building.dart';
import 'package:revo/feature/home_screen/ui/screen/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;

  final List<BottomNavigationItem> _navigationItems = [
    BottomNavigationItem(
      icon: Icons.home,
      activeIcon: Icons.home_filled,
      label: 'الرئيسية',
      page: const HomeScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.search,
      activeIcon: Icons.search,
      label: 'البحث',
      page: const HomeScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.add_circle_outline,
      activeIcon: Icons.add_circle,
      label: 'إضافة',
      page: const AddBuilding(),
    ),
    BottomNavigationItem(
      icon: Icons.notifications_none,
      activeIcon: Icons.notifications,
      label: 'الإشعارات',
      page: const HomeScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.person_outline,
      activeIcon: Icons.person,
      label: 'حسابي',
      page: const HomeScreen(),
    ),
  ];

  void _onItemTapped(int index) {
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
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[600],
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}

class BottomNavigationItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final Widget page;

  const BottomNavigationItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.page,
  });
}
