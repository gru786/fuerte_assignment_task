import 'package:flutter/material.dart';
import 'package:fuerte_assignment/providers/bottom_nav_provider.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var bottomNavProvider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "👋 Hello,",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.7),
                ),
                Text(
                  "Gaurav Singh",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.8),
                ),
              ],
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/profilePicture.jpg"),
            ),
          ],
        ),
        backgroundColor: const Color(0xff418f9b),
      ),
      
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Column(
            children: [
              PreferredSize(
                preferredSize: Size(double.infinity, screenHeight * 0.3),
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
                        TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                          calendarFormat: CalendarFormat.week,
                          headerVisible: false,

                          daysOfWeekStyle: const DaysOfWeekStyle(
                              weekdayStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              weekendStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              decoration: BoxDecoration()),
                          pageAnimationEnabled: true,
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
                      "SERVICES",
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
               Padding(
                padding:  const EdgeInsets.all(8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: primaryColor.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: primaryColor.withOpacity(0.7),
                            child: Icon(Icons.coronavirus_rounded),
                          ),
                        ),
                        const Text("Covid-19", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: primaryColor.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: primaryColor.withOpacity(0.7),
                            child: Icon(Icons.personal_injury_sharp),
                          ),
                        ),
                        const Text("Doctors", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: primaryColor.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: primaryColor.withOpacity(0.7),
                            child: Icon(Icons.local_hospital),
                          ),
                        ),
                        const Text("Hospitals", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: primaryColor.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: primaryColor.withOpacity(0.7),
                            child: Icon(Icons.medical_information),
                          ),
                        ),
                        const Text("Medicines", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)
                      ],
                    ),
                  ],
                ),
              ),


              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 6),
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: screenHeight * 0.14,
                        child: Card(
                          elevation: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Symptoms of Covid to watch out for",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                      Text(
                                        "August 19, 07:50 PM",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/vaccination_poster.png",
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );

                    // ListTile(
                    //   title: Text("Symptoms of Covid to watch out for"),
                    //   subtitle: Text("August 19, 07:50 PM"),
                    //   trailing: Image.asset("assets/images/vaccination_poster.png"),
                    // );
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
