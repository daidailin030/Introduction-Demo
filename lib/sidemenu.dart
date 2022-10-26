import 'package:flutter/material.dart';
import 'package:flutter_demo/education.dart';
import 'package:flutter_demo/portfolios.dart';
import './intro.dart';
import './project_list.dart';
import './work_list.dart';
import './personality.dart';

class sidemenu extends StatelessWidget {
  const sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItem(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 100),
      );
  Widget buildMenuItem(BuildContext context) => Column(
        children: [
          ListTile(
            title: Text(
              '基本資料',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => intro()));
            },
          ),
          ListTile(
            title: Text(
              '人格特質',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => personality()));
            },
          ),
          ListTile(
            title: Text(
              '求學過程',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => education()));
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Divider(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              '專案經驗',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const project()));
            },
          ),
          ListTile(
            title: Text(
              '工作經驗',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const work()));
            },
          ),
          ListTile(
            title: Text(
              '作品集',
              textAlign: TextAlign.center,
              style: ListTileSetting(),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const portfolio()));
            },
          )
        ],
      );

  TextStyle ListTileSetting() {
    return const TextStyle(fontSize: 24);
  }
}
