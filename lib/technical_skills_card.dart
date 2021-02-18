import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TechnicalSkillsCard extends StatelessWidget {
  final List<String> skills;
  final String headerText;
  const TechnicalSkillsCard(
      {Key key, @required this.skills, @required this.headerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = Text(
      "$headerText:",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    );

    List<Widget> children = [
      header,
      Divider(
        thickness: 1,
      )
    ];
    children.addAll(
      List.generate(
        skills.length,
        (index) => Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      size: 7,
                    ),
                  ),
                ),
                TextSpan(
                  text: skills[index],
                )
              ],
            ),
          ),
        ),
      ),
    );

    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
