import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/technical_skills.dart';
import 'package:web_resume/project_list.dart';
import 'package:web_resume/resume_section.dart';
import 'package:web_resume/technical_skills_list.dart';
import 'package:web_resume/widget_view.dart';
import 'package:web_resume/work_experiences_list.dart';

class Resume extends StatefulWidget {
  @override
  ResumeState createState() => ResumeState();
}

class ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) => ResumeView(this);
}

class ResumeView extends WidgetView<Resume, ResumeState> {
  ResumeView(ResumeState state) : super(state);
  Widget build(BuildContext content) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: SizedBox(
              width: Get.width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Casey Haskins",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 44,
                      ),
                    ),
                  ),
                  Divider(thickness: 1),
                  ResumeSection(
                    title: "Work Experience",
                    child: ExperiencesList(),
                    iconData: FontAwesomeIcons.briefcase,
                  ),
                  Divider(thickness: 1),
                  ResumeSection(
                    title: "Projects",
                    child: ProjectsList(),
                    iconData: FontAwesomeIcons.projectDiagram,
                  ),
                  Divider(thickness: 1),
                  ResumeSection(
                    child: TechnicalSkills(),
                    iconData: FontAwesomeIcons.laptop,
                    title: "Technical Skills",
                  ),
                  Divider(thickness: 1),
                  ResumeSection(
                    child: Container(),
                    iconData: FontAwesomeIcons.graduationCap,
                    title: "Education",
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text("Contact Information"),
          onPressed: () => Get.defaultDialog(),
          icon: FaIcon(
            FontAwesomeIcons.mailBulk,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
