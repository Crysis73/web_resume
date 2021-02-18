import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResumeSection extends StatelessWidget {
  final String title;
  final Widget child;
  final IconData iconData;
  const ResumeSection({
    Key key,
    @required this.title,
    @required this.child,
    @required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: FaIcon(iconData),
      childrenPadding: EdgeInsets.all(20),
      initiallyExpanded: false,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            child,
          ],
        ),
      ],
    );
  }
}
