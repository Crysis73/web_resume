import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/project.dart';
import 'package:web_resume/project_card.dart';
import 'package:web_resume/widget_view.dart';

class ProjectsList extends StatefulWidget {
  @override
  ProjectsListState createState() => ProjectsListState();
}

class ProjectsListState extends State<ProjectsList> {
  List<Project> projects = Get.find<ProjectsModel>().projects;
  @override
  Widget build(BuildContext context) => ProjectsListView(this);
}

class ProjectsListView extends WidgetView<ProjectsList, ProjectsListState> {
  ProjectsListView(ProjectsListState state) : super(state);
  Widget build(BuildContext content) {
    return ListBody(
      children: List.generate(
        state.projects.length,
        (index) => ProjectCard(
          project: state.projects[index],
        ),
      ),
    );
  }
}
