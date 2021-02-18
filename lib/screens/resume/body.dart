import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:web_resume/screens/resume/components/education_list.dart';
import 'package:web_resume/screens/resume/components/project_list.dart';
import 'package:web_resume/screens/resume/components/resume_section.dart';
import 'package:web_resume/screens/resume/components/technical_skills_list.dart';
import 'package:web_resume/screens/resume/components/work_experiences_list.dart';

class ResumeBody extends StatelessWidget {
  const ResumeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final divider = const Divider(thickness: 1);

    final headerText = const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Casey Haskins",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 44,
        ),
      ),
    );

    final workExperienceSection = const ResumeSection(
      title: "Work Experience",
      child: ExperiencesList(),
      iconData: FontAwesomeIcons.briefcase,
    );

    final projectSection = const ResumeSection(
      title: "Projects",
      child: ProjectsList(),
      iconData: FontAwesomeIcons.projectDiagram,
    );

    final techSkillsSection = const ResumeSection(
      child: TechnicalSkills(),
      iconData: FontAwesomeIcons.laptop,
      title: "Technical Skills",
    );

    final educationSection = const ResumeSection(
      iconData: FontAwesomeIcons.graduationCap,
      title: "Education",
      child: EducationList(),
    );

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * .1,
            vertical: Get.height * .05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headerText,
              divider,
              workExperienceSection,
              divider,
              projectSection,
              divider,
              techSkillsSection,
              divider,
              educationSection,
            ],
          ),
        ),
      ),
    );
  }
}
