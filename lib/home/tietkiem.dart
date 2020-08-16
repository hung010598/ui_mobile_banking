import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabTietKiem extends StatelessWidget {
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
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                padding: const EdgeInsets.only(top: 32.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text("Danh sách tiền gửi"),
              ),
            ),
            new Expanded(
                flex: 2,
                child: new Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Colors.lightGreen[600],
                        Colors.lightGreen[300]
                      ])),
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 32.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Expanded(
                          flex: 8,
                          child: new Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                "Tổng số dư",
                                style: TextStyle(color: Colors.white),
                              ),
                              new Text("0 VND",
                                  style: TextStyle(color: Colors.white))
                            ],
                          )),
                      new Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: new Container(
                            width: 10.0,
                            padding: const EdgeInsets.only(right: 0.0),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)
                                )),
                            alignment: Alignment.center,
                            child: Text("Bộ lọc", style: TextStyle(color: Colors.white, fontSize: 16.0)),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            new Expanded(
              flex: 4,
              child: new Container(
                  color: Colors.black12,
                  padding: const EdgeInsets.all(32.0),
                  child: new Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: new ListView(
                      children: <Widget>[
                        new Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0)),
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                    "Quý khách chưa có tài khoản tiết kiệm"),
                              ],
                            ))
                      ],
                    ),
                  )),
            ),
            Expanded(
              flex: 8,
              child: new Container(
                color: Colors.black12,
              ),
            )
          ]),
    );
  }

  void switchChanged(bool value) {}
}
