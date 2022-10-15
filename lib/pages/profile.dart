import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Profile", icon: Icons.menu),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: const [
            Icon(Icons.edit),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xff6b0b02),
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
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Text(
                                  'DARKWAH',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Text(
                                  'John',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Bio(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Username',
                                  style: TextStyle(
                                    color: Color(0xff6b0b02),
                                  ),
                                ),
                                Text(
                                  'Jdarkwah1',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Surname',
                                  style: TextStyle(
                                    color: Color(0xff6b0b02),
                                  ),
                                ),
                                Text(
                                  'DARKWAH',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Other Names',
                                  style: TextStyle(
                                    color: Color(0xff6b0b02),
                                  ),
                                ),
                                Text(
                                  'John',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                    color: Color(0xff6b0b02),
                                  ),
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Date of Birth',
                                  style: TextStyle(
                                    color: Color(0xff6b0b02),
                                  ),
                                ),
                                Text(
                                  '23 Oct 2002',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Passport Number',
                          style: TextStyle(
                            color: Color(0xff6b0b02),
                          ),
                        ),
                        Text(
                          'N/A',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
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

class Bio extends StatelessWidget {
  const Bio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xfff3e9e9),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xff6b0b02),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Personal',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    // color: const Color(0xff6b0b02),
                    borderRadius: BorderRadius.circular(8)),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Programme',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff6b0b02),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    // color: const Color(0xff6b0b02),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff6b0b02),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
