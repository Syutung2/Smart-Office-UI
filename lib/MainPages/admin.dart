import 'package:demo02/MainPages/AdminPages/adminhome.dart';
import 'package:demo02/MainPages/TeacherPages/teacherhome.dart';
import 'package:demo02/MainPages/mine.dart';
import 'package:flutter/material.dart';

class AdminPageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        cardColor: Colors.grey[100],
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
      home: AdminPage(),
    );
  }
}

class AdminPage extends StatefulWidget {
  AdminPage({Key key}) : super(key: key);
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  int currentIndex = 0;
  final items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      title: Text("我的"),
    ),
  ];
  final bodyLists = [AdminHome(), MinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(), preferredSize: Size.fromHeight(0)),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: onTap,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.lightBlue,
        type: BottomNavigationBarType.fixed,
      ),
      body: bodyLists[currentIndex],
    );
  }

  void onTap(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
