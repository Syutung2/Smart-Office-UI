import 'dart:io';

import 'package:demo02/MainPages/admin.dart';
import 'package:demo02/MainPages/student.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef _StringClickCallBack = void Function(int selectIndex, Object selectStr);
typedef _ArrayClickCallBack = void Function(
    List<int> selecteds, List<dynamic> strData);
typedef _DateClickCallBack = void Function(
    dynamic selectDateStr, dynamic selectData);

void main() {
  runApp(StudentPageBar());
  if (defaultTargetPlatform == TargetPlatform.android) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        cardColor: Colors.white,
        fontFamily: "opposans",
        buttonColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          backgroundColor: Colors.black,
          fontFamily: "opposans",
          primaryColorDark: Colors.white,
          buttonColor: Colors.blue,
          cardColor: Colors.grey[500]),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int shenfen = 0;
  String username = "";
  String password = "";
  bool _switchSelected = true;

  get editingController2 => null;

  get editingController => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            PreferredSize(child: AppBar(), preferredSize: Size.fromHeight(0)),
        body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: Stack(children: <Widget>[
                Container(
                  child: Image.asset("images/m.png"),
                  alignment: Alignment.topCenter,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    "iFlutter 智慧办公系统",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  alignment: Alignment.topCenter,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                          child: Image.asset("images/flutter-hero-laptop2.png"),
                          width: 300,
                          alignment: Alignment.center,
                          height: 300,
                          decoration: new BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(250.0))),
                        ),
                        Container(
                            child: TextField(
                              controller: editingController,
                              maxLength: 15,
                              maxLines: 1,
                              autocorrect: true,
                              obscureText: false,
                              textAlign: TextAlign.center, //对齐方式
                              style: TextStyle(
                                  fontSize: 26.0, color: Colors.green),
                              onChanged: (text) {
                                username = text;

                                //长度变化
                                //print(text.length);
                              },
                              onSubmitted: (text) {
                                username = text;
                                //  / print("内容提交时回调");
                              },
                              decoration: InputDecoration(
                                  filled: true,
                                  prefixIcon: Icon(Icons.person),
                                  suffixText: "用户名"),
                            ),
                            width: 320,
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)))),
                        Container(
                            child: TextField(
                              controller: editingController2,
                              maxLength: 18,
                              maxLines: 1,
                              autocorrect: true,
                              obscureText: true,
                              textAlign: TextAlign.center, //对齐方式
                              style: TextStyle(
                                  fontSize: 26.0, color: Colors.green),
                              onChanged: (text) {
                                password = text;

                                //长度变化
                                //print(text.length);
                              },
                              onSubmitted: (text) {
                                password = text;
                                //  / print("内容提交时回调");
                              },
                              decoration: InputDecoration(
                                  filled: true,
                                  prefixIcon: Icon(Icons.https),
                                  suffixText: "密码"),
                            ),
                            width: 320,
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 80,
                            alignment: Alignment.centerLeft,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)))),
                        Container(
                          child: FlatButton(
                            child: Text(
                              "登  录",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {},
                            onLongPress: () {},
                            onHighlightChanged: (value) {},
                          ),
                          width: 300,
                          height: 60,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ],
                    ),
                  ],
                )
              ])),
        ));
  }
}
