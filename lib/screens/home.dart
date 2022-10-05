import 'package:flutter/material.dart';

import '../widgets/activity_session.dart';
import '../widgets/class_schedule.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/news_feed.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Home", icon: Icons.menu),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight - 110,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Good Evening,',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xff610b0d),
                                ),
                              ),
                              Text(
                                'John Darkwa',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff610b0d),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green,
                            ),
                            child: Image.asset('images/profile.png',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Your next class',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const ClassSchedule(),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'What would you like to do ?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const ActivitySession(),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'What is trending?',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const NewsFeed(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xff6b0b02),
    );
  }
}
