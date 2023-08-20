import 'package:flutter/material.dart';
import 'package:fuerte_assignment/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20,),
        title: Text("PROFILE", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white, letterSpacing: 1),),
      ),
      body: Center(
      child: Image.asset("assets/images/panda.png"),
    ),
    );
  }
}