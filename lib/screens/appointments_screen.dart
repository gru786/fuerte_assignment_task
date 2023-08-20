import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fuerte_assignment/constants/colors.dart';
import 'package:fuerte_assignment/providers/bottom_nav_provider.dart';
import 'package:provider/provider.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var rand = Random();
    var screenHeight = MediaQuery.sizeOf(context).height;
    var bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff418f9b),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () {
              //TODO2:
            },
          ),
        ],
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 16,
              ),
              onPressed: () {
                //TODO1: implement back button on doctors screen
              },
            ),
            const Text(
              "APPOINTMENTS",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Card(
            elevation: 2,
            child: Container(
              height: screenHeight * 0.12,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/profilePicture.jpg"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gaurav Singh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            const Text(
                              "Nephrologist",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.blue.shade100,
                                  child: const Icon(
                                    Icons.work_sharp,
                                    color: Colors.blue,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${rand.nextInt(10)} years',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.red.shade200,
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${rand.nextInt(100)} %',
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Card(
            elevation: 2,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Cost:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                      Text(
                        "\$80",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Session fee for 30 minutes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "To Pay:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                      Text(
                        "\$80",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.04,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.local_offer_outlined,
                            size: 14,
                          ),
                        ),
                        Text(
                          "Use Promo Code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ]),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Card(
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "PAYMENT OPTIONS",
                  style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
                RadioListTile(
                  title: Text("Paypal", style: TextStyle(fontWeight: FontWeight.bold),),
                  value: "male",
                  groupValue: bottomNavBarProvider.groupVal,
                  onChanged: (value) {
                    bottomNavBarProvider.updateRadio(value!);
                  },
                ),
                RadioListTile(
                  title: Text("Credit Card", style: TextStyle(fontWeight: FontWeight.bold),),
                  value: "female",
                  groupValue: bottomNavBarProvider.groupVal,
                  onChanged: (value) {
                    bottomNavBarProvider.updateRadio(value!);
                  },
                )
              ],
            ),
          ),
        ),
        const Spacer(),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            elevation: 4,
            color: seconcdaryColor,
            child: Container(
              
              height: screenHeight * 0.06,
              child: Center(child: Text("Pay & Confirm", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.3),),),
              
            ),
          ),
        ),

      ]),
    );
  }
}
