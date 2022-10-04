import 'package:flutter/material.dart';

class RegisterCourse extends StatelessWidget {
  const RegisterCourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(),
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
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xff6b0b02),
    );
  }
}

Widget CustomAppBar() {
  return AppBar(
    title: const Text('Register Course'),
    actions: const [Icon(Icons.menu)],
    backgroundColor: const Color(0xff6b0b02),
    elevation: 0,
  );
}
