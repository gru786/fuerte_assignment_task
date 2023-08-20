import 'package:flutter/material.dart';
import 'package:fuerte_assignment/constants/colors.dart';
import 'package:fuerte_assignment/providers/bottom_nav_provider.dart';
import 'package:fuerte_assignment/screens/appointments_screen.dart';
import 'package:fuerte_assignment/screens/doctors_screen.dart';
import 'package:fuerte_assignment/screens/home_screen.dart';
import 'package:fuerte_assignment/screens/profile_screen.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final List<Widget> screenList = [
    const HomeScreen(),
     DoctorsScreen(),
    const AppointmentsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var bottomNavProvider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          bottomNavProvider.updateIndex(index);
        },
        currentIndex: bottomNavProvider.index,
        iconSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedFontSize: 8,
        elevation: 4,
        selectedItemColor: seconcdaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Doctors"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Appointments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "My Profile"),
        ],
      ),
      body: screenList[
        bottomNavProvider.index
      ],
    );
  }
}