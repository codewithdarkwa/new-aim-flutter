import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class Registration extends StatelessWidget {
  const Registration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List activityIcons = [
      Icons.menu_book_outlined,
      Icons.receipt_long,
    ];

    List activityName = [
      "Read Instructions",
      "Get Registration Slip",
    ];

    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Registration", icon: Icons.menu),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xfff3e9e9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Online registration for Semester 2, 2021/2022 Academic Year is available between 14 June 2022, 00:00 and 12 September 2022, 23:59 GMT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6b0b02),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          activityIcons.length,
                          (index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 170,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff3e9e9),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          activityIcons[index],
                                          color: const Color(0xff610b0d),
                                        ),
                                        Text(
                                          activityName[index],
                                          style: const TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
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
                    )
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
