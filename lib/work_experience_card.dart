import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_resume/model/work_experience.dart';

class WorkExperienceCard extends StatelessWidget {
  final WorkExperience experience;

  const WorkExperienceCard({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double subheadingFontSize = 20;
    final headerText = Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          text: experience.positionTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          children: [
            TextSpan(
              text: " | ${experience.companyName}",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: subheadingFontSize,
                //color: subheadingFontColor,
              ),
            ),
            TextSpan(
              text: " | ${experience.companyLocation}",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: subheadingFontSize,
                //color: subheadingFontColor,
              ),
            ),
            TextSpan(
              text: " | ${experience.fromDate} - ${experience.toDate}",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: subheadingFontSize,
                //color: subheadingFontColor,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            headerText,
            Divider(
              thickness: 1,
            ),
            Wrap(
              spacing: 1,
              runSpacing: 5,
              children: List.generate(
                experience.bulletPoints.length,
                (index) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: FaIcon(
                              FontAwesomeIcons.solidCircle,
                              size: 7,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: experience.bulletPoints[index],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
