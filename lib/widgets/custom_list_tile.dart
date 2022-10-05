import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    this.title,
    this.page,
    required this.icon,
  }) : super(key: key);
  final title;
  final page;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        minLeadingWidth: 5);
  }
}
