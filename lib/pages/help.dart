import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class Help extends StatelessWidget {
  const Help({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(appBarTitle: "Help", icon: Icons.menu),
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
                  children: const [
                    HelpRequest(
                      title: 'Open a Ticket',
                      subtitle: 'Have a request/issue? Open a ticket',
                      icon: Icons.help,
                    ),
                    Divider(thickness: 1),
                    HelpRequest(
                      title: 'FAQS',
                      subtitle: 'Read our frequently asked questions',
                      icon: Icons.help,
                    ),
                    Divider(),
                    HelpRequest(
                      title: 'Live Chat',
                      subtitle: 'Start a conversation now!',
                      icon: Icons.chat,
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

class HelpRequest extends StatelessWidget {
  const HelpRequest({
    Key? key,
    this.title,
    this.subtitle,
    required this.icon,
  }) : super(key: key);

  final title;
  final subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xfff3e9e9),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(icon, size: 40, color: const Color(0xff6b0b02)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 15,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6b0b02),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
