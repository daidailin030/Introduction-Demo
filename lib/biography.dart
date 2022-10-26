import 'package:flutter/material.dart';
import './sidemenu.dart';
import 'data/personality_data.dart';
import 'data/education_data.dart';
import 'model/TextStyle.dart';
import 'model/Design.dart';

class biography extends StatelessWidget {
  const biography({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('自傳'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        drawer: sidemenu(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "個人特質",
                  style: SubtitleTextStyle(),
                ),
                betweenRelated(),
                Column(
                  children: allPersonalities
                      .map(
                        (index) => Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  index.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      height: 1.5,
                                      letterSpacing: 1,
                                      decoration: TextDecoration.underline),
                                )),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                index.explain,
                                style: contentTextStyle(),
                              ),
                            )
                          ],
                        ),
                      )
                      .toList(),
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                Text(
                  "求學過程",
                  style: SubtitleTextStyle(),
                ),
                Column(
                  children: allEducations
                      .map((index) => Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    index.school,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        height: 1.5,
                                        letterSpacing: 1,
                                        decoration: TextDecoration.underline),
                                  )),
                              Column(
                                children: index.experience
                                    .map((exp) => Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "．" + exp,
                                          style: contentTextStyle(),
                                        )))
                                    .toList(),
                              ),
                              Text(index.review, style: contentTextStyle()),
                              betweenRelated(),
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ));
  }
}
