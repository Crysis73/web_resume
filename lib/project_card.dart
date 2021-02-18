import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_resume/model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double subheadingFontSize = 20;
    final headerText = Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          text: project.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          children: List.generate(
            project.technologies.length,
            (index) => TextSpan(
              text:
                  " ${project.technologies[index]}${index == project.technologies.length - 1 ? "" : ","}",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: subheadingFontSize,
              ),
            ),
          ),
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
                project.bulletPoints.length,
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
                          text: project.bulletPoints[index],
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
