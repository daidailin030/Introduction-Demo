import 'package:flutter/material.dart';
import 'package:flutter_demo/sidemenu.dart';

import 'data/personality_data.dart';
import 'model/Design.dart';
import 'model/TextStyle.dart';

class personality extends StatelessWidget {
  const personality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('人格特質'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        drawer: sidemenu(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MBTIsetting(),
                      const Divider(
                        color: Colors.blueGrey,
                      ),
                      Column(
                        children: allPersonalities
                            .map(
                              (index) => Column(
                                children: [
                                  betweenNonRelated(),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        index.title,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            height: 1.5,
                                            letterSpacing: 1,
                                            decoration:
                                                TextDecoration.underline),
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
                    ]))));
  }

  Widget MBTIsetting() {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'MBTI\nISFJ-T',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            betweenNonRelated(),
            Image.asset(
              'assets/images/MBTI.png',
              height: 200,
            ),
            betweenRelated(),
            Text(
              '守衛者（Defender）',
              style: contentTextStyle(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
