import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            label: "Profile",
            selectedIcon: Icon(Icons.person),
            //
          ),
        ],
      ),
    );
  }
}
