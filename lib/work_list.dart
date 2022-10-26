import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Work.dart';
import './sidemenu.dart';
import './work_detail.dart';
import 'data/work_data.dart';

class work extends StatelessWidget {
  const work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('工作經驗'),
        backgroundColor: Colors.blueGrey.shade600,
      ),
      drawer: const sidemenu(),
      body: Column(
        children: allWorks.map((works) => buildCard(context, works)).toList(),
      ),
    );
  }

  InkWell buildCard(BuildContext context, works) {
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
                    works.company,
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
              Text(works.title.toString(),
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 10,
              ),
              Text(works.duration,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, //error
            MaterialPageRoute(
                builder: (context) => work_detail(
                      selected_work: works.ID,
                    )));
      },
    );
  }
}
