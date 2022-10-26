import 'package:flutter/material.dart';
import 'data/project_data.dart';
import 'model/Project.dart';
import 'model/TextStyle.dart';
import 'model/Design.dart';

// ignore: must_be_immutable, camel_case_types
class project_detail extends StatelessWidget {
  project_detail({Key? key, required this.selected_project}) : super(key: key);

  Project projectInfo = allProjects.elementAt(0);
  int selected_project;

  @override
  Widget build(BuildContext context) {
    projectInfo = allProjects.elementAt(selected_project - 1);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('專案介紹'),
        backgroundColor: Colors.blueGrey.shade600,
      ),
      body: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 30, right: 30, bottom: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleSetting(projectInfo.name),
                betweenNonRelated(),
                Row(
                  children: projectInfo.lang
                      .map((index) => langSetting(context, index))
                      .toList(),
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                betweenRelated(),
                Text(projectInfo.content, style: const TextStyle(fontSize: 18)),
              ],
            ),
          )),
    );
  }

  Widget langSetting(BuildContext context, index) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: TextButton(
        onPressed: null,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 20, right: 20)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
        ),
        child: Text(
          index,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
