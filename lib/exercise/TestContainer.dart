/**
 * Copyright (C), 2015-2020, suntront
 * FileName: TestContainer
 * Author: Jeek
 * Date: 2020/3/26 16:56
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestContainerPage extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: TestContainerStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class TestContainerStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestContainerState();
  }
}

class _TestContainerState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TestContainer Page"),
      ),
      body: null,
    );
  }
}
