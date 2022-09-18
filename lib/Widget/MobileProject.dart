import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potrtfolio/Widget/CustomText.dart';

class MobileProject extends StatelessWidget {
  final Function ontab;
  final String image;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;

  MobileProject({
    this.ontab, this.image,
    this.projectDesc, this.projectTitle,
    this.tech1, this.tech2, this.tech3
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                this.projectTitle,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 0.75,
                    fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 0.8,
             child: Image(
               fit: BoxFit.fill,
               image: AssetImage(image),
             ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                this.projectDesc,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                  letterSpacing: 0.75,
                  fontSize: 16
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  // color: Colors.indigo,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: tech1 == null ? "" : tech1,
                        textsize: 14,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomText(
                        text: tech2 == null ? "" : tech2,
                        textsize: 14,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomText(
                        text: tech3 == null ? "" : tech3,
                        textsize: 14,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              // color: Colors.indigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Colors.white.withOpacity(0.3),
                    onPressed: ontab,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
