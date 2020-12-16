import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextScreen extends StatefulWidget {

  final String text;

  NextScreen({this.text});

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {


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
        backgroundColor: Colors.blue,
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
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // 4
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ネクスト"),
      ),
      body: Column(
        children: [

          Text(widget.text),

          RaisedButton(
            child: Text("戻る"),
            onPressed: () => Navigator.pop(context),
          ),

          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.access_alarm),
                      title:Text("中身1"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.close),
                    title:Text("中身2"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.delete),
                    title:Text("中身3"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.accessibility_new),
                    title:Text("中身4"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 5
  //
  @override
  void didUpdateWidget(NextScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
    Fluttertoast.showToast(
        msg: "didUpdateWidget",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
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
        backgroundColor: Colors.blue,
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
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
