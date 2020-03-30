/**
 * Copyright (C), 2015-2020, suntront
 * FileName: RegisterPage
 * Author: Jeek
 * Date: 2020/3/30 9:06
 * Description:
 */

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
  }
}

class _RegisterState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  final InputDecoration inputDecoration = InputDecoration(
    hintText: "Nome",
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(5))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5))),
    contentPadding: EdgeInsets.all(15),
    fillColor: Colors.white,
    filled: true,
    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
    counterText: "",
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  controller: usernameController,
                  obscureText: false,
                  style: TextStyle(color: Colors.black87),
                  keyboardType: TextInputType.text,
                  maxLength: 30,
                  decoration: inputDecoration.copyWith(hintText: "用户名"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  controller: passwordController,
                  obscureText: false,
                  style: TextStyle(color: Colors.black87),
                  keyboardType: TextInputType.text,
                  maxLength: 30,
                  decoration: inputDecoration.copyWith(hintText: "密码"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextField(
                  controller: passwordConfirmController,
                  obscureText: false,
                  style: TextStyle(color: Colors.black87),
                  keyboardType: TextInputType.text,
                  maxLength: 30,
                  decoration: inputDecoration.copyWith(hintText: "确认密码"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: 5,
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: MaterialButton(
                    minWidth: double.infinity,
                    child: Text(
                      "注册",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      print(
                          "jeek flutter 注册 username: ${usernameController.text} password: ${passwordController.text} password confirm: ${passwordConfirmController.text}");
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
