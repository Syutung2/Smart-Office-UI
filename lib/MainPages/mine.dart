// /StudentMine

import 'package:demo02/tools/global_tools.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  var setXiang = [
    "检查更新",
  ];
  void login(BuildContext context) {
    String username, password;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          var editingController2;
          var editingController;
          return Stack(
            children: [
              Container(
                height: 30.0,
                width: double.infinity,
                color: Colors.black54,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tools.getTanChuangColor(context),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    )),
              ),
              Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("登录",
                                            style: TextStyle(fontSize: 25))
                                      ],
                                    ),
                                  ]),
                            ),
                          ])),
                  Container(
                      child: TextField(
                        controller: editingController,
                        maxLength: 15,
                        maxLines: 1,
                        autocorrect: true,
                        obscureText: false,
                        textAlign: TextAlign.center, //对齐方式
                        style: TextStyle(fontSize: 26.0, color: Colors.green),
                        onChanged: (text) {
                          username = text;
                        },
                        onSubmitted: (text) {
                          username = text;
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
                        style: TextStyle(fontSize: 26.0, color: Colors.green),
                        onChanged: (text) {
                          password = text;
                        },
                        onSubmitted: (text) {
                          password = text;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: FlatButton(
                          child: Text(
                            "取   消",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            Navigator.pop(context, '取消');
                          },
                          onLongPress: () {},
                          onHighlightChanged: (value) {},
                        ),
                        width: 120,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "确   定",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {},
                          onLongPress: () {},
                          onHighlightChanged: (value) {},
                        ),
                        width: 120,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        });
  }

  Widget isLogin(bool islogin) {
    if (islogin) {
      var q = ["退出登录"];
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Divider(height: 2.0, color: Colors.grey),
                        ),
                    itemCount: q.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 200,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 30.0,
                                          width: double.infinity,
                                          color: Colors.black54,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Tools.getTanChuangColor(
                                                  context),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25),
                                              )),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 0),
                                                alignment: Alignment.center,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text("您是否要退出登录？",
                                                              style: TextStyle(
                                                                  fontSize: 25))
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    child: FlatButton(
                                                      child: Text(
                                                        "取   消",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context, '取消');
                                                      },
                                                      onLongPress: () {},
                                                      onHighlightChanged:
                                                          (value) {},
                                                    ),
                                                    width: 120,
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment: Alignment.center,
                                                    decoration: new BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    30.0))),
                                                  ),
                                                  Container(
                                                    child: FlatButton(
                                                      child: Text(
                                                        "确   定",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                      onPressed: () {},
                                                      onLongPress: () {},
                                                      onHighlightChanged:
                                                          (value) {},
                                                    ),
                                                    width: 120,
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment: Alignment.center,
                                                    decoration: new BoxDecoration(
                                                        color: Colors.lightBlue,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    30.0))),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child:
                                Text(q[index], style: TextStyle(fontSize: 20)),
                          ));
                    }),
                margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          )
        ],
      );
    } else {
      var q = ["登录"];
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Divider(height: 2.0, color: Colors.grey),
                        ),
                    itemCount: q.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () {
                              login(context);
                            },
                            child:
                                Text(q[index], style: TextStyle(fontSize: 20)),
                          ));
                    }),
                margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          )
        ],
      );
    }
  }

  Widget getBase() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) =>
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Divider(height: 2.0, color: Colors.grey),
                      ),
                  itemCount: setXiang.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 60,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(setXiang[index],
                              style: TextStyle(fontSize: 20)),
                        ));
                  }),
              margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "张三同学",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "帐号：",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "syutung1234",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "班级：",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "计科1903",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                )),
            getBase(),
            isLogin(false),
          ],
        ),
      ),
    );
  }
}
