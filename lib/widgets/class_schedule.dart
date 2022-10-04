import 'package:flutter/material.dart';

class ClassSchedule extends StatelessWidget {
  const ClassSchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xfff3e9e9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            'Your next class will appear here.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
