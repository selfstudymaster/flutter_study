import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'next_screen.dart';

class HomeScreen extends StatefulWidget {
  // 1
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 2
  // 初回のみ呼び出される
  // BuildContextは使えない
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
    Fluttertoast.showToast(
        msg: "initState",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // 3
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
    Fluttertoast.showToast(
        msg: "didChangeDependencies",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // 4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("てすと"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("遷移"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextScreen()),
            ),
          )
        ],
      ),
    );
  }

  // 5
  //
  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    Fluttertoast.showToast(
        msg: "didUpdateWidget",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // 6
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
    Fluttertoast.showToast(
        msg: "deactivate",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // 7
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
    Fluttertoast.showToast(
        msg: "dispose",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
