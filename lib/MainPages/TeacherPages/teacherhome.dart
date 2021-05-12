import 'dart:math';

import 'package:demo02/tools/global_tools.dart';
import 'package:demo02/tools/pick_tools.dart';
import 'package:flutter/material.dart';

class TeacherHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TeacherHomeState();
  }
}

class Teacher {
  final String name;
  final String zuowei;
  final bool isInOffice;

  Teacher(this.name, this.zuowei, this.isInOffice);
}

class TeacherHomeState extends State<TeacherHome> {
  String starttime = "上午8时00分";
  String endtime = "下午16时00分";
  var _count = 0;
  var state = ["办公中", "上课中", "外出中", "假期中"];
  var phoneFocusNode;
  int _num = 0;
  var _color1;
  Color aisb(var a, var b) {
    if (a == b) {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }

  void returnStateDef() {
    setState(() {
      _count = 0; //恢复到系统（数据库读出的状态）的值
    });
  }

  void returnDateDef() {
    setState(() {
      starttime = "上午9时00分"; //恢复到系统（数据库读出的时间）的值
      endtime = "下午17时00分"; //恢复到系统（数据库读出的时间）的值
    });
  }

  @override
  Widget build(BuildContext context) {
    Color c = Tools.getTanChuangColor(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(6),
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
                        "您好！李四老师",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              )),
          Card(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text("时间："),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          child: Text("$starttime"),
                          onPressed: () {
                            JhPickerTool.showDatePicker(context,
                                title: '', dateType: DateType.AP_HM,
                                clickCallBack: (var str, var time) {
                              setState(() {
                                this.starttime = str;
                              });
                            });
                          },
                        ),
                        Text("到"),
                        FlatButton(
                          child: Text("$endtime"),
                          onPressed: () {
                            JhPickerTool.showDatePicker(context,
                                title: '', dateType: DateType.AP_HM,
                                clickCallBack: (var str, var time) {
                              setState(() {
                                this.endtime = str;
                              });
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        child: FlatButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 250,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 40.0,
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
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text("您的办公日期将修改为",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20)),
                                                          Text(
                                                              "$starttime - $endtime",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontSize:
                                                                      20)),
                                                          Text("确认要修改吗？",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 20))
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
                                                        returnDateDef();

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
                            child: Text("更改我的办公日期")))
                  ],
                ),
              ],
            ),
          ),
          Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "您的状态",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 80,
                            height: 60,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _count = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.work,
                                    color: aisb(_count, 0),
                                  ),
                                  Text("办公中")
                                ],
                              ),
                            )),
                        Container(
                            width: 80,
                            height: 60,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _count = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.class_,
                                    color: aisb(_count, 1),
                                  ),
                                  Text("上课中")
                                ],
                              ),
                            )),
                        Container(
                            width: 80,
                            height: 60,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _count = 2;
                                });
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: aisb(_count, 2),
                                  ),
                                  Text("外出中")
                                ],
                              ),
                            )),
                        Container(
                            width: 80,
                            height: 60,
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _count = 3;
                                });
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.weekend,
                                    color: aisb(_count, 3),
                                  ),
                                  Text("假期中")
                                ],
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            child: FlatButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 250,
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 40.0,
                                              width: double.infinity,
                                              color: Colors.black54,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      Tools.getTanChuangColor(
                                                          context),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(25),
                                                  )),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text("您的状态将修改为",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20)),
                                                              Text(
                                                                  "${state[_count]}",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .red,
                                                                      fontSize:
                                                                          20)),
                                                              Text("确认要修改吗？",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20))
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 25),
                                                          ),
                                                          onPressed: () {
                                                            returnStateDef();
                                                            Navigator.pop(
                                                                context, '取消');
                                                          },
                                                          onLongPress: () {},
                                                          onHighlightChanged:
                                                              (value) {},
                                                        ),
                                                        width: 120,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 5, 0, 0),
                                                        alignment:
                                                            Alignment.center,
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 25),
                                                          ),
                                                          onPressed: () {},
                                                          onLongPress: () {},
                                                          onHighlightChanged:
                                                              (value) {},
                                                        ),
                                                        width: 120,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 5, 0, 0),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: new BoxDecoration(
                                                            color: Colors
                                                                .lightBlue,
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
                                child: Text("更改我的状态")))
                      ],
                    ),
                  ],
                ),
              )),
          Card(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "给学生留个言？",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 8,
                  autofocus: false,
                  cursorColor: Colors.blue,
                  onSubmitted: (v) {
                    phoneFocusNode = v;
                  },
                  onChanged: (value) {
                    setState(() {
                      phoneFocusNode = value;

                      if (value.length > 120) {
                        _num = 120;
                        _color1 = Colors.red;
                      } else {
                        _num = value.length;
                        _color1 = Colors.blue;
                      }
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "请您输入要留言的内容？",
                    labelText: "留言板",
                    // 未获得焦点下划线设为灰色
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    //获得焦点下划线设为蓝色
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Text(
                      "${_num}/120",
                      style: TextStyle(color: _color1),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: FlatButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 350,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 40.0,
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
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("您的状态将修改为",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 20)),
                                                        Text(
                                                            "${phoneFocusNode}",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 20)),
                                                        Text("确认要修改吗？",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 20))
                                                      ],
                                                    ),
                                                  ]),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
                                                      returnStateDef();
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
                          child: Text("留言")))
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
