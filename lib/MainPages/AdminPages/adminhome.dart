import 'package:demo02/MainPages/AdminPages/add.dart';
import 'package:demo02/MainPages/AdminPages/xiangmuguanli.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
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
                        "您好！张三管理员",
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
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => ItemAdmin(
                                        chance: 0,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.table_chart),
                            Text("教师管理"),
                          ],
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => ItemAdmin(
                                        chance: 1,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.school),
                            Text("学生管理"),
                          ],
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => ItemAdmin(
                                        chance: 2,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.work),
                            Text("办公室管理"),
                          ],
                        ))
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),
          Card(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => AddItemBar(
                                        chance: 1,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.add_circle),
                            Text("添加学生"),
                          ],
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => AddItemBar(
                                        chance: 0,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.add_circle),
                            Text("添加教师"),
                          ],
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => AddItemBar(
                                        chance: 3,
                                      )));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.add_circle),
                            Text("添加办公室"),
                          ],
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
