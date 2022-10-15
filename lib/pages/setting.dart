import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class Setting extends StatelessWidget {
  const Setting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Settings", icon: Icons.menu),
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 25.0,
                    horizontal: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6b0b02),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Version',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            '2.0.6',
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            'Academic Information Manager(AIM) is the official mobile app for students of Kwame Nkrumah University of Science and Technology. It is a mobile companion of the online student portal which is also a part of KNUST Student Information System. It\'s main objective is to bring functions of the online student portal to mobile devices.',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.3,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 25),
                          Text(
                            'Developer',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'University Information Technology Services (UITS).\n Kwame Nkrumah University of Science and Technology (KNUST).',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.3,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
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
