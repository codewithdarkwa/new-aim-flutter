import 'package:flutter/material.dart';

import '../screens/home.dart';

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
        height: screenHeight - 170,
        color: const Color(0xff6b0b02),
        child: ListView(children: [
          Column(),
        ]),
      ),
    );
  }
}
