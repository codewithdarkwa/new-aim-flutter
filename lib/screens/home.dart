import 'package:flutter/material.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: Column(children: [
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
                              ),
                            ),
                            Text(
                              'John Darkwa',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        Container(
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
                  const Text('Hi')
                ],
              ),
            ),
          ],
        ),
      ]),
      backgroundColor: const Color(0xff6b0b02),
    );
  }
}

// ignore: non_constant_identifier_names
Widget CustomAppBar() {
  return AppBar(
    title: const Text('Home'),
    actions: const [Icon(Icons.menu)],
    backgroundColor: const Color(0xff6b0b02),
    elevation: 0,
  );
}
