import 'dart:ui';

import 'package:flutter/material.dart';


class TabDaThucHien extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:
      new Column(

          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text("TTTT"),
              ),
            ),

            new Expanded(
              flex: 1,
              child: new Container(

                child: new Switch(onChanged: switchChanged, value:true),
              ),
            ),

            new Expanded(
              flex: 7,
              child: new Container(
                child: new GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1.5,
                  children: <Widget>[
                    new Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        new ClipOval(
                          child: new Container(
                            padding: const EdgeInsets.only(top: 32.0),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.4,
                            color: Colors.blue,
                            child: new Column(
                              children: <Widget>[
                                new Text("data")
                              ],
                            ),
                          ),
                        ),
                        new Text("data")

                      ],
                    ),
                    new Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        new ClipOval(
                          child: new Container(
                            padding: const EdgeInsets.only(top: 32.0),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.4,
                            color: Colors.blue,
                            child: new Column(
                              children: <Widget>[
                                new Text("data")
                              ],
                            ),
                          ),
                        ),
                        new Text("data")
                      ],
                    ),
                    new Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        new ClipOval(
                          child: new Container(
                            padding: const EdgeInsets.only(top: 32.0),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.4,
                            color: Colors.blue,
                            child: new Column(
                              children: <Widget>[
                                new Text("data")
                              ],
                            ),
                          ),
                        ),
                        new Text("data")
                      ],
                    ),
                    new Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        new ClipOval(
                          child: new Container(
                            padding: const EdgeInsets.only(top: 32.0),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.4,
                            color: Colors.blue,
                            child: new Column(
                              children: <Widget>[
                                new Text("data")
                              ],
                            ),
                          ),
                        ),
                        new Text("data")
                      ],
                    )
                  ],
                ),

              ),
            )


          ]

      ),

    );
  }
  void switchChanged(bool value) {}

}