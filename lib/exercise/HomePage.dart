/**
 * Copyright (C), 2015-2020, suntront
 * FileName: HomePage
 * Author: Jeek
 * Date: 2020/3/30 14:17
 * Description:
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: null,
    );
  }
}