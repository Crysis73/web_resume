import 'package:flutter/material.dart';

class WorkExperience {
  String positionTitle;
  String companyName;
  String companyLocation;
  String fromDate;
  String toDate;
  List<String> bulletPoints;

  WorkExperience({
    @required this.positionTitle,
    @required this.companyName,
    @required this.companyLocation,
    @required this.fromDate,
    @required this.toDate,
    @required this.bulletPoints,
  });
}

class WorkExperiencesModel {
  List<WorkExperience> experience;

  WorkExperiencesModel.withData() {
    this.experience = [
      new WorkExperience(
        positionTitle: "Associate Software Engineer",
        companyName: "PSI Services LLC",
        companyLocation: "Carmel, IN (Remote)",
        fromDate: "Jan 2021",
        toDate: "Present",
        bulletPoints: [
          "Worked on a Shared Services team primarialy responsible for Identity, Authorization, Payment Processing, and Tenancy services using .NET Core and Azure",
          "Implemented OIDC Bearer Token Authentication across all company platforms",
          "Transitioned to a foundations team responsible for developing the company's new generation of products on top of Docker/Kubernetes/.NET 5",
        ],
      ),
      new WorkExperience(
        positionTitle: "Software Engineer I",
        companyName: "Ontario Systems LLC",
        companyLocation: "Muncie, IN (Remote)",
        fromDate: "May 2019",
        toDate: "Jan 2021",
        bulletPoints: [
          "Worked full time throughout junior and senior year of college as a Software Engineer.",
          "Followed a mix of scrum and agile methodologies to build highly scalable solutions using C#, Docker, Kubernetes, AWS, Python, Javascript, and Intersystems Cache.",
          "Developed a custom git extension built in python to automatically source sync local directories with cache databases reducing the time it took to stand up a new development environment from 20 minutes to just a few seconds.",
          "Participated in Project Vigo, which was a high priority get our on premise products running inside Docker containers and hosted on Kubernetes Clusters in AWS EKS. ",
          "Created several C# microservices (ASP.Net Core) with full CI/CD to staging using Jenkins and maintained at least 80% automated test coverage for each service.",
        ],
      ),
    ];
  }
}
