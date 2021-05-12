import 'package:demo02/tools/pick_tools.dart';
import 'package:flutter/material.dart';

class AddItemBar extends StatelessWidget {
  int chance;
  AddItemBar({Key key, @required this.chance}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          fontFamily: "opposans",
          buttonColor: Colors.blue,
          primaryColorLight: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "opposans",
          backgroundColor: Colors.black,
          primaryColorDark: Colors.white,
          buttonColor: Colors.blue,
        ),
        home: Scaffold(
          appBar:
              PreferredSize(child: AppBar(), preferredSize: Size.fromHeight(0)),
          body: AddItem(
            chance: chance,
          ),
        ));
  }
}

class AddItem extends StatefulWidget {
  int chance;
  AddItem({Key key, @required this.chance}) : super(key: key);

  @override
  AddItemHome createState() => AddItemHome(chance: chance);
}

class AddItemHome extends State<AddItem> {
  int chance;
  AddItemHome({Key key, @required this.chance});
  @override
  @override
  int countNum = 1;
  String username = "";
  String password = "";
  String repassword = "";
  String name = "";
  String _errorText = "密码不能为空";
  String _errorText2 = "";
  var teachers = ["张三", "李四", "王五", "钱一", "孙二", "赵四", "周三", "张六"];
  var office_teacher = ["请选择", "请选择", "请选择", "请选择", "请选择", "请选择"];

  var schools = ['A校区', 'B校区', 'C校区'];
  var jiaoxuelou = [
    ['教一', '教二', '教三', '计算中心'],
    ['教一', '教二', '教三', '教五', '教六', '计算中心'],
    ['教一', '教二', '教三', '教五', '教六', '教七', '计算中心'],
  ];
  var myClass = ["CS1901", "CS1902", "CS1903", "CS1904", "CS1905", "CS1906"];
  var myclass_c = "CS1903";
  var office = ["102", "203", "205", "207"];
  var office_c = "102";
  String _school = "A校区";
  int _school_index = 0;
  String _jiaoxuelou = "教一";
  int _jiaoxuelou_index = 0;
  var editingController;
  var editingController2;
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    if (chance == 0) {
      return SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.all(15),
              child: Text(
                "添加教师",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 60),
              ),
              alignment: Alignment.centerLeft,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
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
                      //errorText: _errorText2,
                      suffixText: "用户名"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                      helperText: "密码请包含字母和数字",
                      errorText: _errorText,
                      suffixText: "密码"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                    repassword = text;
                  },
                  onSubmitted: (text) {
                    repassword = text;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.https),
                      helperText: "密码请包含字母和数字",
                      errorText: _errorText,
                      suffixText: "再重复一次密码"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                    name = text;

                    //长度变化
                    //print(text.length);
                  },
                  onSubmitted: (text) {
                    name = text;
                    //  / print("内容提交时回调");
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      suffixText: "姓名"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            Container(
              child: FlatButton(
                  child: Text(
                    "添加",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {}),
              width: 300,
              height: 60,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
            ),
          ],
        ),
      ));
    } else if (chance == 1) {
      return SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.all(15),
              child: Text(
                "添加学生",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 60),
              ),
              alignment: Alignment.centerLeft,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
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
                      //errorText: _errorText2,
                      suffixText: "用户名"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                      helperText: "密码请包含字母和数字",
                      errorText: _errorText,
                      suffixText: "密码"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                    repassword = text;
                  },
                  onSubmitted: (text) {
                    repassword = text;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.https),
                      helperText: "密码请包含字母和数字",
                      errorText: _errorText,
                      suffixText: "再重复一次密码"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                    name = text;

                    //长度变化
                    //print(text.length);
                  },
                  onSubmitted: (text) {
                    name = text;
                    //  / print("内容提交时回调");
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      suffixText: "姓名"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text("班级："),
                  ),
                  Container(
                      child: FlatButton(
                    child: Text("${myclass_c}>"),
                    onPressed: () {
                      JhPickerTool.showStringPicker(context,
                          title: '班级选择',
                          data: myClass, clickCallBack: (int index, var item) {
                        setState(() {
                          this.myclass_c = item;
                        });
                      });
                    },
                  )),
                ],
              ),
            ),
            Container(
              child: FlatButton(
                  child: Text(
                    "添加",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {}),
              width: 300,
              height: 60,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
            ),
          ],
        ),
      ));
    } else {
      return SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.all(15),
              child: Text(
                "添加办公室",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 60),
              ),
              alignment: Alignment.centerLeft,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
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
                    name = text;

                    //长度变化
                    //print(text.length);
                  },
                  onSubmitted: (text) {
                    name = text;
                    //  / print("内容提交时回调");
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      suffixText: "办公室号"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
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
                      helperText: "密码请包含字母和数字,用于登录在办公室门前的客户端",
                      suffixText: "密码"),
                ),
                width: 320,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 80,
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text("办公室位置："),
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
            Container(
              margin: EdgeInsets.all(15),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Text("教师${i}："),
                        ),
                        Container(
                            child: FlatButton(
                          child: Text("${office_teacher[i]}"),
                          onPressed: () {
                            JhPickerTool.showStringPicker(context,
                                title: '教师选择', data: teachers,
                                clickCallBack: (int index, var item) {
                              setState(() {
                                this.office_teacher[i] = item;
                                teachers.removeAt(index);
                              });
                            });
                          },
                        )),
                      ],
                    ),
                  );
                },
                itemCount: office_teacher.length,
              ),
            ),
            Container(
              child: FlatButton(
                  child: Text(
                    "添加",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {}),
              width: 300,
              height: 60,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
            ),
          ],
        ),
      ));
    }
  }
}
