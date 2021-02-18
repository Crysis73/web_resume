import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/education.dart';
import 'package:web_resume/screens/resume/components/resume_section_card.dart';

class EducationList extends StatelessWidget {
  const EducationList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EducationModel> education = Get.find<EducationListModel>().education;
    return Container(
      child: ListBody(
        children: List.generate(
          education.length,
          (index) => ResumeSectionCard(
            title: education[index].schoolName,
            subTitles: education[index].subheadings,
            bulletPoints: education[index].bulletPoints,
            delimiter: "|",
            leadingDelimiter: true,
          ),
        ),
      ),
    );
  }
}
