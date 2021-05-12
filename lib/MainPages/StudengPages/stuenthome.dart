import 'dart:math';

import 'package:demo02/tools/global_tools.dart';
import 'package:demo02/tools/pick_tools.dart';
import 'package:flutter/material.dart';

class StudentHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentHomeState();
  }
}

class Teacher {
  final String name;
  final String zuowei;
  final bool isInOffice;

  Teacher(this.name, this.zuowei, this.isInOffice);
}

class StudentHomeState extends State<StatefulWidget> {
  var schools = ['全部', 'A校区', 'B校区', 'C校区'];
  var jiaoxuelou = [
    ['全部', '教一', '教二', '教三', '计算中心'],
    ['全部', '教一', '教二', '教三', '教五', '教六', '计算中心'],
    ['全部', '教一', '教二', '教三', '教五', '教六', '教七', '计算中心'],
  ];
  String _school = "全部";
  int _school_index = 0;
  String _jiaoxuelou = "全部";
  int _jiaoxuelou_index = 0;
  var office = [
    "101",
    "102",
    "103",
    "201",
    "207",
    "202",
    "208",
    "301",
    "302",
    "401",
    "407",
    "502"
  ];
  List<Teacher> textTeacher = [
    new Teacher("曹操", "A座位", false),
    new Teacher("赵云", "B座位", true),
    new Teacher("张飞", "C座位", false),
    new Teacher("刘备", "D座位", false),
    new Teacher("关羽", "E座位", true),
    new Teacher("孙权", "F座位", true),
  ];

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
                        "您好！张三同学",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "您的导师：${textTeacher[1].name}老师",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "办公室：A校区教一201",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "座位：${textTeacher[1].zuowei}",
                        style: TextStyle(fontSize: 15),
                      ),
                      Tools.getState(textTeacher[1].isInOffice)
                    ],
                  ),
                ],
              )),
          Card(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                  child: Text("您的位置："),
                ),
                Container(
                    child: FlatButton(
                  child: Text("$_school>"),
                  onPressed: () {
                    JhPickerTool.showStringPicker(context,
                        title: '校区选择',
                        data: schools, clickCallBack: (int index, var item) {
                      setState(() {
                        this._school = item;
                        this._school_index = index;
                      });
                    });
                  },
                )),
                Container(
                    child: FlatButton(
                  child: Text("$_jiaoxuelou>"),
                  onPressed: () {
                    JhPickerTool.showStringPicker(context,
                        title: '教学楼选择', data: jiaoxuelou[_school_index],
                        clickCallBack: (int index, var item) {
                      setState(() {
                        this._jiaoxuelou = item;
                        this._jiaoxuelou_index = index;
                      });
                    });
                  },
                )),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: office.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: FlatButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent, //重点

                            builder: (BuildContext context) {
                              return Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    decoration: BoxDecoration(
                                        color: c,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("${office[index]}办公室",
                                                style: TextStyle(fontSize: 25))
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "当前办公人数：3人",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              "有人",
                                              style: TextStyle(
                                                  color: Tools.getColor(true),
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${textTeacher[index].name}老师",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  Text(
                                                    "座位：${textTeacher[index].zuowei}",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  Tools.getState(
                                                      textTeacher[index]
                                                          .isInOffice)
                                                ],
                                              ),
                                            );
                                          },
                                          itemCount: textTeacher.length,
                                        ),
                                        Container(
                                          child: FlatButton(
                                            child: Text(
                                              "确   定",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context, '取消');
                                            },
                                            onLongPress: () {},
                                            onHighlightChanged: (value) {},
                                          ),
                                          height: 60,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          alignment: Alignment.center,
                                          decoration: new BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.0))),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              alignment: Alignment.center,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: Text(
                                "${office[index]}办公室",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "当前办公人数：3人",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "有人",
                                    style: TextStyle(
                                        color: Tools.getColor(true),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )));
            },
          )
        ],
      ),
    );
  }
}
