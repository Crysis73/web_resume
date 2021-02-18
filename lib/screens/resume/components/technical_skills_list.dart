import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/technical_skills.dart';
import 'package:web_resume/screens/resume/components/resume_section_card.dart';

class TechnicalSkills extends StatelessWidget {
  const TechnicalSkills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TechnicalSkillsModel model = Get.find();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ResumeSectionCard(
            bulletPoints: model.proficientIn,
            subTitles: [],
            title: "Proficient",
            delimiter: "",
            leadingDelimiter: false,
          ),
        ),
        Expanded(
          child: ResumeSectionCard(
            bulletPoints: model.familiarWith,
            subTitles: [],
            title: "Familiar",
            delimiter: "",
            leadingDelimiter: false,
          ),
        ),
      ],
    );
  }
}
