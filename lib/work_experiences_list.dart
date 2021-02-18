import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/work_experience.dart';
import 'package:web_resume/widget_view.dart';
import 'package:web_resume/work_experience_card.dart';

class ExperiencesList extends StatefulWidget {
  @override
  ExperiencesListState createState() => ExperiencesListState();
}

class ExperiencesListState extends State<ExperiencesList> {
  var workExperiences = Get.find<WorkExperiencesModel>().experience;

  @override
  Widget build(BuildContext context) => WorkExperiencesView(this);
}

class WorkExperiencesView
    extends WidgetView<ExperiencesList, ExperiencesListState> {
  WorkExperiencesView(ExperiencesListState state) : super(state);
  Widget build(BuildContext content) {
    return ListBody(
      children: List.generate(
        state.workExperiences.length,
        (index) => WorkExperienceCard(
          experience: state.workExperiences[index],
        ),
      ),
    );
  }
}
