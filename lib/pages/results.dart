import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class Results extends StatelessWidget {
  const Results({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    List results = [
      'Year 2,Second Semester',
      'Year 2,First Semester',
      'Year 2,First Semester',
      'Year 1,First Semester',
    ];
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Results", icon: Icons.menu),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight - 95,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Select a semester',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff6b0b02),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(),
                      Column(
                          children: List.generate(results.length, (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Container(
                                padding: const EdgeInsets.only(top: 12),
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff3e9e9),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        height: 150,
                                        width: 7,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff6b0b02),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 22),
                                      child: Text(
                                        results[index],
                                        style: const TextStyle(
                                          color: Color(0xff6b0b02),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      })),
                    ],
                  ),
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
