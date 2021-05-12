import 'package:demo02/MainPages/AdminPages/add.dart';
import 'package:demo02/tools/global_tools.dart';
import 'package:flutter/material.dart';

class ItemAdmin extends StatelessWidget {
  int chance; // 0 = 教师管理 ,1 = 学生管理 , 2 = 办公室管理
  ItemAdmin({Key key, @required this.chance}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (chance == 0) {
      return Scaffold(
        body: ListView(
          children: [
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            )),
            Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "教师",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("OFFICE：A校区教一203")],
                  ),
                ],
              ),
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddItemBar(
                          chance: chance,
                        )));
          },
          child: Icon(Icons.add_circle_outline),
        ),
      );
    } else if (chance == 1) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddItemBar(
                          chance: chance,
                        )));
          },
          child: Icon(Icons.add_circle_outline),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [Text("ID：8999999999999")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "张三",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "学生",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Row(
                    children: [Text("班级：计算机科学与技术1903")],
                  ),
                ],
              ),
            ));
          },
          itemCount: 20,
        ),
      );
    } else {
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
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddItemBar(
                            chance: chance,
                          )));
            },
            child: Icon(Icons.add_circle_outline),
          ),
          body: ListView.builder(
            itemCount: office.length,
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: FlatButton(
                      onPressed: () {},
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
          ));
    }
  }
}
