import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = 'OFF';

  void changeCheck() {
    setState((){
       if (enabled) {
          stateText = 'OFF';
          enabled = false;
        } else {
          stateText = 'ON';
          enabled = true;
        }
    });
    print('AAA :  $stateText');
  }

  @override
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Stateful Test'),
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
