import 'package:flutter/material.dart';
import 'package:flutter_flowtask3/sharedemo.dart';
import 'package:flutter_flowtask3/stepperdemo.dart';
import 'package:flutter_flowtask3/tabbardemo.dart';
import 'alertdialogdemo.dart';
import 'carouselslider.dart';
import 'gradientdemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Share Data to other appln"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ShareDemo();
                }));
              },
            ),
            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Tab bar View"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return TabbedAppBarDemo();
                }));
              },
            ),


            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Carousel Slider"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CarouselDemo();
                }));
              },
            ),


            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Gradient Demo"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return GradientDemo();
                }));
              },
            ),

            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Steppers"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return StepperDemo();
                }));
              },
            ),

            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Alert Dialog"),
              color: Colors.yellowAccent,
              textColor: Colors.black,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AlertDemo();
                }));
              },
            ),


          ],
        ),
      ),
    );
  }

}
