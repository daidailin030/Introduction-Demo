import 'package:flutter/material.dart';
import 'package:flutter_demo/project_detail.dart';
import './sidemenu.dart';
import 'data/project_data.dart';

class project extends StatelessWidget {
  const project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('專案經驗'),
        backgroundColor: Colors.blueGrey.shade600,
      ),
      drawer: const sidemenu(),
      body: Column(
        children: allProjects
            .map((projects) => buildCard(context, projects))
            .toList(),
      ),
    );
  }

  InkWell buildCard(BuildContext context, projects) {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueGrey,
                height: 60,
                child: Center(
                  child: Text(
                    projects.name,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                projects.lang.toString(),
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                projects.time,
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, //error
            MaterialPageRoute(
                builder: (context) =>
                    project_detail(selected_project: projects.ID)));
      },
    );
  }
}
