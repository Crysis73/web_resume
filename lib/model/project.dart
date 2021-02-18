import 'package:flutter/cupertino.dart';

class Project {
  String title;
  List<String> technologies;
  List<String> bulletPoints;
  String projectUrl;
  Project({
    @required this.title,
    @required this.technologies,
    @required this.bulletPoints,
    this.projectUrl,
  });
}

class ProjectsModel {
  List<Project> projects = [
    new Project(
        title: "Betterflye Mobile",
        technologies: [
          "Flutter",
          "Dart",
          "Docker",
          "PHP",
          "Github Actions",
          "Fastlane",
        ],
        bulletPoints: [
          "Lead a team of student developers to build a cross platform mobile application for the social impact platform Betterflye with a distributed microservice mobile application architecture.",
          "Built CI/CD pipelines to deploy development builds to an internal testing track in Google Play.",
          "Built a docker-compose development environment to host the PHP web application, SQL database, and API locally for the mobile application to consume.",
          "Achieved 90% automated widget test coverage",
        ],
        projectUrl: "https://github.com/Crysis73/betterflye-mobile"),
    new Project(
      title: "DnD Campaign Manager",
      technologies: [
        "Java",
        "JavaFX",
        "CSS",
      ],
      bulletPoints: [
        "Built an application that allowed users to create, manage, and save campaigns for the popular role-playing game Dungeons and Dragons",
        "Allow users to create characters automatically or manually",
        "Display character's traits, health, experience points, money",
        "Generate combat orders",
        "Log all campaign events: die rolls, trait checks, level ups, and custom logs"
      ],
      projectUrl: "https://github.com/Crysis73/DND-Campaign-Manager",
    ),
  ];
}
