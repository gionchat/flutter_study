/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LoginAnimPage
 * Author: Jeek
 * Date: 2020/3/30 14:37
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main()=>runApp(LoginAnimPage());

class LoginAnimPage extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: LoginAnimStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginAnimStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginAnimState();
  }
}

class _LoginAnimState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginAnim Page"),
      ),
      body: null,
    );
  }
}