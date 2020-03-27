/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LoginUI
 * Author: Jeek
 * Date: 2020/3/27 8:35
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(LoginUIPage());

class LoginUIPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: LoginUIStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginUIStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginUIState();
  }
}

class _LoginUIState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("LoginUI Page"),
//      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Text("Hello Flutter"),
        decoration: BoxDecoration(
          color: Colors.blue,
              image: DecorationImage(image: AssetImage("res/drawable/login_main_bg.jpg",),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
