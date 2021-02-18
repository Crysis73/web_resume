// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ContactInformationCard extends StatelessWidget {
  const ContactInformationCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(20),
      actions: [
        TextButton(
          child: Text("Back"),
          onPressed: () => Get.back(),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Connect with Me",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(thickness: 1),
          TextButton.icon(
            icon: Padding(
              padding: const EdgeInsets.all(1),
              child: FaIcon(FontAwesomeIcons.github),
            ),
            label: Text("Crysis73"),
            onPressed: () =>
                html.window.open("https://github.com/Crysis73", 'github'),
          ),
          TextButton.icon(
            icon: Padding(
              padding: const EdgeInsets.all(2),
              child: FaIcon(FontAwesomeIcons.linkedin),
            ),
            label: Text("caseyhaskins"),
            onPressed: () => html.window
                .open("https://www.linkedin.com/in/caseyhaskins/", 'linkedIn'),
          ),
        ],
      ),
    );
  }
}
