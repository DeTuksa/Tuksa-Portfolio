import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/work_custom_data.dart';

class MobileWorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Ehealth4Everyone",
          subTitle:
              "Java Application Developer (Internship)\nWorked as a java developer intern and liased with the product manager and team lead on the various projects at hand.",
          duration: "July 2019 - Decemver 2019",
        ),
        WorkCustomData(
          title: "Demz Analytics",
          subTitle:
              "Flutter Mobile Developer (Contract)\nWorked with a team of developers to deliver a fluid mobile application for the company. Involved in writing and performing test on the mobile application.",
          duration: "April 2021 - June 2021",
        ),
        WorkCustomData(
          title: "EF Networks Ltd",
          subTitle:
              "Flutter Mobile Developer (Full Time)\nTook on the task of building two mobile applications for the company. Liased with the designer to deliver design requirements and also the team lead to ensure the success of the development. Was responsible for writing and performing test.",
          duration: "September 2021 - March 2022",
        ),
        WorkCustomData(
          title: "Matador Trust Limited",
          subTitle:
              "Flutter Mobile Developer\nWorked with a team of developers in a startup to develop the MVP and other versions of the mobile application. Responsible for liasing with the CTO and team members to deliver a fluid application.",
          duration: "November 2021 - April 2022",
        ),
      ].reversed.toList(),
    );
  }
}
