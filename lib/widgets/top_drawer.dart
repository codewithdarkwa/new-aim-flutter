import 'package:flutter/material.dart';

import '../pages/download.dart';
import '../pages/fees.dart';
import '../pages/help.dart';
import '../pages/lecturer_assessment.dart';
import '../pages/profile.dart';
import '../pages/registration.dart';
import '../pages/results.dart';
import '../pages/setting.dart';
import '../pages/timetable.dart';
import '../screens/home.dart';
import 'custom_list_tile.dart';

class TopDrawer extends StatelessWidget {
  const TopDrawer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            title: const Text(
              "Home",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            backgroundColor: const Color(0xff6b0b02),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                icon: const Icon(Icons.close, size: 26),
              ),
            ],
            elevation: 0,
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          height: screenHeight - 150,
          color: const Color(0xff6b0b02),
          child: ListView(
            children: [
              const CustomListTile(
                title: "Home",
                icon: Icons.home,
                page: Home(),
              ),
              const CustomListTile(
                title: "Profile",
                icon: Icons.person,
                page: Profile(),
              ),
              const CustomListTile(
                title: "Registration",
                icon: Icons.receipt_long,
                page: Registration(),
              ),
              const CustomListTile(
                title: "Results",
                icon: Icons.insert_chart,
                page: Results(),
              ),
              const CustomListTile(
                title: "Fees",
                icon: Icons.wallet,
                page: Fees(),
              ),
              const CustomListTile(
                title: "Timetable",
                icon: Icons.calendar_month,
                page: Timetable(),
              ),
              const CustomListTile(
                title: "Lecturer Assessment",
                icon: Icons.how_to_reg,
                page: LecturerAssessment(),
              ),
              const CustomListTile(
                title: "Download",
                icon: Icons.download,
                page: Download(),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.withOpacity(0.2),
              ),
              const CustomListTile(
                title: "Settings",
                icon: Icons.settings,
                page: Setting(),
              ),
              const CustomListTile(
                title: "Help",
                icon: Icons.question_mark,
                page: Help(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 350,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 7, 7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
