import 'package:flutter/material.dart';
import './sidemenu.dart';
import 'model/Design.dart';

class portfolio extends StatelessWidget {
  const portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('作品集'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        drawer: sidemenu(),
        body: Padding(
            padding: EdgeInsets.all(5),
            child: GridView.custom(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                childrenDelegate: SliverChildListDelegate(List.generate(
                  9,
                  (index) => Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(5), // Border width
                      decoration: portfolioSetting(),
                      child: Image.asset(
                          'assets/images/' + (index + 1).toString() + ".jpg"),
                    ),
                  ),
                )))));
  }
}
