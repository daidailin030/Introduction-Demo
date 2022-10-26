import 'package:flutter/material.dart';
import './sidemenu.dart';

class intro extends StatelessWidget {
  intro({Key? key}) : super(key: key);

  List<String> title = [
    "姓名",
    "出生年月日",
    "居住地",
    "學歷",
    "專業",
    "程式語言",
    "語言",
    "興趣",
    "優點"
  ];
  List<String> content = [
    "王昱琳",
    "88/04/21",
    "彰化縣",
    "國立高雄大學",
    "資訊管理學系",
    "JAVA、MYSQL",
    "中文、台語、英文",
    "寫手帳（每日回顧）",
    "自我管理、隨和"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('基本資料'),
          backgroundColor: Colors.blueGrey.shade600,
        ),
        drawer: const sidemenu(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              imageSetting(),
              //INTRO TABLE
              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [introSetting()],
                    // introSetting(),
                  ))
            ],
          ),
        ));
  }

  TableRow buildcells(List<String> cells, List<String> content) => TableRow(
        children: <Widget>[
          Container(
            child: Text(
              title[index],
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            height: 40,
          ),
          Container(
            child: Text(
              content[index],
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            height: 40,
          )
        ],
      );

  //IMAGE
  Widget imageSetting() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset('assets/images/ME-01.jpg'),
      ),
    );
  }

  DataTable introSetting() {
    return DataTable(
        columnSpacing: 40,
        columns: [
          DataColumn(
              label: Text(
            "",
            style: TableSetting(),
          )),
          DataColumn(
              label: Text(
            "",
            style: TableSetting(),
          )),
        ],
        rows: List<DataRow>.generate(
            title.length,
            (index) => DataRow(cells: [
                  DataCell(Text(
                    title[index],
                    style: TableSetting(),
                  )),
                  DataCell(
                    Text(
                      content[index],
                      style: TableSetting(),
                    ),
                  ),
                ])));
  }

  //INFO
  TextStyle TableSetting() {
    return const TextStyle(fontSize: 24, fontWeight: FontWeight.w500);
  }
}
