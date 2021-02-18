import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/education.dart';
import 'package:web_resume/model/project.dart';
import 'package:web_resume/model/technical_skills.dart';
import 'package:web_resume/model/work_experience.dart';
import 'package:web_resume/screens/resume/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(new WorkExperiencesModel.withData());
    Get.put(new ProjectsModel());
    Get.put(new TechnicalSkillsModel());
    Get.put(new EducationListModel());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        accentColor: Colors.amber,
        cardColor: Colors.grey[850],
        appBarTheme: AppBarTheme(
          color: Colors.grey[850],
        ),
        bottomAppBarColor: Colors.grey[850],
        dialogBackgroundColor: Colors.grey[850],
      ),
      home: Resume(),
    );
  }
}
