import 'package:flutter/material.dart';
import 'package:new_aim/widgets/top_drawer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.appBarTitle,
    required this.icon,
  }) : super(key: key);
  final appBarTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TopDrawer()),
            );
          },
          icon: Icon(icon, size: 26),
        ),
      ],
      backgroundColor: const Color(0xff6b0b02),
      elevation: 0,
    );
  }
}
