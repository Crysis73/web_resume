import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:web_resume/screens/resume/body.dart';
import 'package:web_resume/screens/resume/components/contact_information_card.dart';

class Resume extends StatelessWidget {
  const Resume({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final floatingActionButton = FloatingActionButton.extended(
      label: Text("Connect With Me"),
      onPressed: () => Get.dialog(ContactInformationCard()),
      icon: FaIcon(
        FontAwesomeIcons.mailBulk,
      ),
    );

    final bottomBar = BottomAppBar(
      child: SizedBox(
        height: AppBar().preferredSize.height,
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: ResumeBody(),
        appBar: AppBar(),
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomBar,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
