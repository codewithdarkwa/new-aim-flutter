import 'package:flutter/material.dart';

import '../pages/fees.dart';
import '../pages/register_course.dart';
import '../pages/results.dart';

class ActivitySession extends StatelessWidget {
  const ActivitySession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List activityPage = [const Results(), const Fees(), const RegisterCourse()];
    List activityIcons = [
      Icons.insert_chart,
      Icons.wallet,
      Icons.receipt_long,
    ];

    List activityName = [
      "Check Results",
      "Pay    Fees",
      "Register Courses",
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          activityIcons.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => activityPage[index],
                  ),
                );
              },
              child: Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xfff3e9e9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          activityIcons[index],
                          color: const Color(0xff610b0d),
                        ),
                        Text(
                          activityName[index],
                          style: const TextStyle(
                            fontSize: 19,
                            color: Color(0xff610b0d),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
