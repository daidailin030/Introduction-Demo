import 'package:flutter/material.dart';
import 'package:flutter_demo/data/education_data.dart';
import 'package:flutter_demo/model/Education.dart';

import 'model/Design.dart';
import 'model/TextStyle.dart';

class education_detail extends StatelessWidget {
  education_detail({Key? key, required this.selected_school}) : super(key: key);

  Education educationInfo = allEducations.elementAt(0);
  int selected_school;

  @override
  Widget build(BuildContext context) {
    educationInfo = allEducations.elementAt(selected_school - 1);

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('校園生活'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                betweenNonRelated(),
                TitleSetting(educationInfo.school),
                betweenNonRelated(),
                Text(
                  educationInfo.faculty,
                  style: SubtitleTextStyle(),
                ),
                betweenNonRelated(),
                Column(
                  children: educationInfo.experience
                      .map((exp) => Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "．" + exp,
                            style: contentTextStyle(),
                          )))
                      .toList(),
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                Text(educationInfo.review, style: contentTextStyle()),
                betweenRelated(),
              ],
            )));
  }
}
