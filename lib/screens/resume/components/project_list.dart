import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/project.dart';
import 'package:web_resume/screens/resume/components/resume_section_card.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Project> projects = Get.find<ProjectsModel>().projects;
    return ListBody(
      children: List.generate(
        projects.length,
        (index) => ResumeSectionCard(
          title: projects[index].title,
          subTitles: projects[index].technologies,
          bulletPoints: projects[index].bulletPoints,
          delimiter: ",",
          leadingDelimiter: false,
          projectUrl: projects[index].projectUrl,
        ),
      ),
    );
  }
}
