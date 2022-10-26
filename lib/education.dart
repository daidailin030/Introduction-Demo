import 'package:flutter/material.dart';
import 'package:flutter_demo/sidemenu.dart';

import 'data/education_data.dart';
import 'education_detail.dart';

class education extends StatelessWidget {
  const education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('求學過程'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        drawer: sidemenu(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: allEducations
                .map((educations) => buildCard(context, educations))
                .toList(),
          ),
        ));
  }

  InkWell buildCard(BuildContext context, educations) {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/' + educations.logo + '.png',
                height: 200,
              ),
              Container(
                  color: Colors.blueGrey,
                  // height: 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        educations.school,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        educations.duration,
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade200),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    education_detail(selected_school: educations.ID)));
      },
    );
  }
}
