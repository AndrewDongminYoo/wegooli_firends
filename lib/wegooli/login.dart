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
          // color: Colors.yellow[600],
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('wegooli friends',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                          height: 2))
                ],
              ),
              TextScreen(),
              PasswordScreen(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('1,0'), Text('1,1')],
              ),
            ],
          ),
        )));
  }
}

class TextScreen extends StatefulWidget {
  @override
  TextState createState() {
    return TextState();
  }
}

class TextState extends State<TextScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print('_printValue: ${controller.text}');
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Container(
        child: Column(children: [
      TextField(
        style: TextStyle(fontSize: 15),
        controller: controller,
        decoration: InputDecoration(
          hintText: '닉네임을 입력해주세요',
          labelText: 'nickname',
          border: OutlineInputBorder(),
          counterText: "$textCounter characters.",
      ),
      // textInputAction: TextInputAction.text,
       keyboardType: TextInputType.text,
    )]));
  }
}

class PasswordScreen extends StatefulWidget {
  @override
  PasswordState createState() {
    return PasswordState();
  }
}

class PasswordState extends State<PasswordScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue1() {
    print('_printValue: ${controller.text}');
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue1);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Container(
        child: Column(children: [
      TextField(
        style: TextStyle(fontSize: 15),
        controller: controller,
        decoration: InputDecoration(
          hintText: '비밀번호를 입력해주세요',
          labelText: 'password',
          border: OutlineInputBorder(),
          counterText: "$textCounter characters.",
        ),
        // textInputAction: TextInputAction.text,
        keyboardType: TextInputType.text,
        obscureText: true,
      )
    ]));
  }
}
