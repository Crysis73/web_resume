import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/technical_skills.dart';
import 'package:web_resume/technical_skills_card.dart';

class TechnicalSkills extends StatelessWidget {
  const TechnicalSkills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TechnicalSkillsModel model = Get.find();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TechnicalSkillsCard(
          skills: model.proficientIn,
          headerText: "Proficient",
        ),
        TechnicalSkillsCard(
          skills: model.familiarWith,
          headerText: "Familiar",
        ),
      ],
    );
  }
}
