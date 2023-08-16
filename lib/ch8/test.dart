import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = 'OFF';

  void changeCheck() {
    if (enabled) {
      stateText = 'OFF';
      enabled = false;
    } else {
      stateText = 'ON';
      enabled = true;
    }
    print('AAA :  $stateText');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Stateless Test'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: changeCheck,
                    color: Colors.red,
                    icon: (enabled
                        ? Icon(
                            Icons.check_box,
                            size: 20,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 20,
                          )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '$stateText',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )));
  }
}
