import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/work_experience.dart';
import 'package:web_resume/screens/resume/components/resume_section_card.dart';

class ExperiencesList extends StatelessWidget {
  const ExperiencesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WorkExperience> workExperiences =
        Get.find<WorkExperiencesModel>().experience;
    return ListBody(
      children: List.generate(
        workExperiences.length,
        (index) => ResumeSectionCard(
          title: workExperiences[index].positionTitle,
          bulletPoints: workExperiences[index].bulletPoints,
          delimiter: "|",
          leadingDelimiter: true,
          subTitles: [
            workExperiences[index].companyName,
            workExperiences[index].companyLocation,
            "${workExperiences[index].fromDate} - ${workExperiences[index].toDate}",
          ],
        ),
      ),
    );
  }
}
