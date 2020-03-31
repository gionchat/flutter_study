/**
 * Copyright (C), 2015-2020, suntront
 * FileName: LoginUI
 * Author: Jeek
 * Date: 2020/3/27 8:35
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/exercise/ForgetPasswordPage.dart';
import 'package:flutter_study/exercise/HomePage.dart';
import 'package:flutter_study/exercise/RegisterPage.dart';
import 'package:toast/toast.dart';

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
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 50),
                  child: Image(
                    image: AssetImage("res/drawable/logo.png"),
                    width: 90,
                  ),
                ),
                Material(
                  color: Colors.white60,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: TextField(
                    controller: usernameController,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.phone_iphone,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "请输入账号",
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 14)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Material(
                  color: Colors.white60,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.vpn_key,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "请输入密码",
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 14)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xFF00DDCC),
                  child: MaterialButton(
                      minWidth: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      child: Text(
                        "登录",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Toast.show("登录成功", context,duration: 2);
                        print(
                            "jeek flutter 登录 username: ${usernameController.text} password: ${passwordController.text}");
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      }),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: InkWell(
                        onTap: () {
                          print("jeek flutter InkWell 忘记密码");
                          Toast.show("忘记密码", context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ForgetPasswordPage();
                          }));
                        },
                        child: Text(
                          "忘记密码",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text("")),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: InkWell(
                        onTap: () {
                          print("jeek flutter InkWell 注册");
                          Toast.show("注册", context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterPage();
                          }));
                        },
                        child: Text(
                          "注册",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                image: AssetImage(
                  "res/drawable/login_main_bg.jpg",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
