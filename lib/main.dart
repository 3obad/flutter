
  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/painting.dart';

  void main() {


    runApp(

        MaterialApp(
            home:MyHomePage()
        )
    );

  }
  class MyHomePage extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      return _WidgetState();
    }
  }

  class _WidgetState extends State<MyHomePage> {
    bool visible = true;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(children: <Widget>[
          Visibility(
            visible: visible,
            child: Row(
              //ROW 1
              children: [
                Container(
                  color: Colors.lightGreen,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: visible,
            child: Row(
              //ROW 1
              children: [
                Container(
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.green,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: new Container(
            color: Colors.redAccent,
            height: 55.0,
            alignment: Alignment.center,
            child: new BottomAppBar(
              color: Colors.blueAccent,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.add, color: Colors.black),
                      onPressed: () {
                        print("show");
                        setState(() {
                          visible = true;
                        });
                      }),
                  new IconButton(
                      icon: new Icon(Icons.remove, color: Colors.black),
                      onPressed: () {
                        print("hide");
                        setState(() {
                          visible = false;
                        });
                      }),
                ],
              ),
            )),
      );
    }
  }