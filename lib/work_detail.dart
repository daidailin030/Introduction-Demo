import 'package:flutter/material.dart';
import 'data/work_data.dart';
import 'model/Work.dart';
import 'model/TextStyle.dart';
import 'model/Design.dart';

class work_detail extends StatelessWidget {
  work_detail({Key? key, required this.selected_work}) : super(key: key);
  Work workInfo = allWorks.elementAt(0);

  int selected_work;

  @override
  Widget build(BuildContext context) {
    workInfo = allWorks.elementAt(selected_work - 1);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('工作介紹'),
        backgroundColor: Colors.blueGrey.shade600,
      ),
      body: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 30, right: 30, bottom: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleSetting(workInfo.company),
                betweenNonRelated(),
                Row(
                  children: workInfo.title
                      .map((index) => jobtitleSetting(context, index))
                      .toList(),
                ),
                betweenNonRelated(),
                Text(
                  "工作內容",
                  style: SubtitleTextStyle(),
                ),
                Column(
                  children: workInfo.job_responsibility
                      .map((index) => Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "．" + index,
                              style: contentTextStyle(),
                              textAlign: TextAlign.left,
                            ),
                          ))
                      .toList(),
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                Text(
                  "心得",
                  style: SubtitleTextStyle(),
                ),
                betweenRelated(),
                Text(workInfo.content, style: contentTextStyle()),
              ],
            ),
          )),
    );
  }

  Widget jobtitleSetting(BuildContext context, index) {
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
