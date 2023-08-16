import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        title: 'wegooli',
        home: Scaffold(
            // appBar: AppBar(
            //   title: Text('title'),
            // ),
            body: Container(
          color: Colors.yellow[600],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('wegooli friends', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  height:2
                ))],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('어쩌고 저쩌고 블라블라')],
              ),
            ],
          ),
        )));
  }
}
