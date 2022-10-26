import 'package:flutter/material.dart';
import 'intro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          title: const Text('Ur HOME'),
          backgroundColor: Colors.blueGrey,
        ),
        //HomePage
        body: const body(),
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          welcome_container(),
          welcome_container(),
          welcome_container(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blueGrey,
                      padding: const EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => intro()));
                    },
                    child: const Text(
                      'Start',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text welcome_container() {
    return const Text(
      'Welcome',
      style: TextStyle(
          color: Colors.white70, fontSize: 80, fontWeight: FontWeight.bold),
    );
  }
}
