import 'package:flutter/material.dart';
class AlertDemo extends StatefulWidget {

  final String title = 'Alert Dialog Demo';

  @override
  _AlertDemoState createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {

  Future<void> show() async
  {
    return showDialog(
      context: context,
      barrierDismissible: false, //It will hold the dialog if user is touch out side of the screen.
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('This is the title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget> [
                Text('This is the first task'),
                Text('This is the second task'),
              ],
            ),
          ),

          actions: <Widget>[
            FlatButton(
                child: Text("OK"),
                onPressed: (){
                  print("Ok pressed");
                  Navigator.pop(context);
                },
            ),
            FlatButton(
              child: Text("CANCEL"),
              onPressed: (){
                print("Cancel pressed");
                Navigator.pop(context);
              },
            ),
          ],
        );
      }

    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text('Show Dialog'),
                onPressed: (){
                  show();
                })
          ],
        ),
      ),
    );
  }
}
