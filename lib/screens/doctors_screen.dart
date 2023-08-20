import 'package:flutter/material.dart';
import 'dart:math';

import 'package:fuerte_assignment/constants/colors.dart';

class DoctorsScreen extends StatelessWidget {
  DoctorsScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff418f9b),
        actions: [
          IconButton(
            icon: Icon(
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
              "DOCTORS",
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Column(
            children: [
              PreferredSize(
                preferredSize: Size(double.infinity, screenHeight * 0.16),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: const BoxDecoration(
                    color: Color(0xff418f9b),
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.search_outlined,
                                      color: Color(0xff418f9b),
                                    ),
                                    onPressed: () {},
                                  )),
                              Expanded(
                                flex: 4,
                                child: TextFormField(
                                  controller: searchController,
                                  decoration: const InputDecoration(
                                    hintText: "Search",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "DOCTORS NEARBY",
                      style: TextStyle(
                          color:  primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color:  seconcdaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
              doctorsCard(screenHeight), 
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RECOMMENDED",
                      style: TextStyle(
                          color:  primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color:  seconcdaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return doctorsCard(screenHeight);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget doctorsCard(double screenHeight) {
  var rand = Random();
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: Card(
      elevation: 2,
      child: Container(
        height: screenHeight * 0.17,
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
            const SizedBox(height: 3,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "Total Fee",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Text(
                        "\$ ${rand.nextInt(200)+50}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Container(
                        height: screenHeight * 0.05,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        //margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Center(
                            child: Text(
                          "Make an appointment",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
