// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResumeSectionCard extends StatelessWidget {
  final String title;
  final List<String> subTitles;
  final List<String> bulletPoints;
  final String delimiter;
  final bool leadingDelimiter;
  final String projectUrl;
  const ResumeSectionCard({
    Key key,
    @required this.title,
    @required this.subTitles,
    @required this.bulletPoints,
    @required this.delimiter,
    @required this.leadingDelimiter,
    this.projectUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerText = Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          children: List.generate(
            subTitles.length,
            (index) => TextSpan(
              text:
                  "${leadingDelimiter ? " $delimiter" : ''} ${subTitles[index]}${(!leadingDelimiter && (index != subTitles.length - 1)) ? delimiter : ''}",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );

    final divider = const Divider(thickness: 1);
    final projectUrlButton = projectUrl != null
        ? Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              child: Text(
                "To Project Site",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: projectUrl != null
                  ? () => html.window.open(projectUrl, '')
                  : null,
            ),
          )
        : SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            headerText,
            divider,
            Wrap(
              spacing: 1,
              runSpacing: 5,
              children: List.generate(
                bulletPoints.length,
                (index) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: FaIcon(
                              FontAwesomeIcons.solidCircle,
                              size: 7,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: bulletPoints[index],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            projectUrlButton,
          ],
        ),
      ),
    );
  }
}
