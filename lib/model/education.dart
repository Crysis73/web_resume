import 'package:flutter/material.dart';

class EducationModel {
  String schoolName;
  List<String> subheadings;
  List<String> bulletPoints;

  EducationModel({
    @required this.schoolName,
    @required this.subheadings,
    @required this.bulletPoints,
  });
}

class EducationListModel {
  List<EducationModel> education = [
    new EducationModel(
      schoolName: "Ball State University",
      subheadings: [
        "Computer Science",
        "Aug 2017 - May 2021",
      ],
      bulletPoints: [
        "Major GPA: 3.75",
        "Dean's List Recipient: Fall 2019, Spring 2020, Fall 2021",
      ],
    ),
    new EducationModel(
      schoolName: "North Central High School",
      subheadings: [
        "Core 40 with Academic Honors",
        "Aug 2013 - May 2017",
      ],
      bulletPoints: [
        "GPA: 4.3",
        "Founder, President: North Central Robotics Club",
        "Dance Captain: North Central Varsity Singers",
        "Member: North Central Counterpoints",
      ],
    ),
  ];
}
