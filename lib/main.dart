import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_resume/model/project.dart';
import 'package:web_resume/model/technical_skills.dart';
import 'package:web_resume/model/work_experience.dart';
import 'package:web_resume/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(new WorkExperiencesModel.withData());
    Get.put(new ProjectsModel());
    Get.put(new TechnicalSkillsModel());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: Resume(),
    );
  }
}
