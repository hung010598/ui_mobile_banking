import 'dart:ui';

import 'package:emobilebanking/tk_thanhtoan/chitiet_tkthanhtoan.dart';
import 'package:emobilebanking/tk_thanhtoan/lichsugiaodich.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DSThe extends StatelessWidget {

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

      body:
      new Column(

          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                color: Colors.white,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top:16.0),
                width: MediaQuery.of(context).size.width,
                child: Text("Danh sách thẻ", style: TextStyle(fontSize: 16.0),),
              ),
            ),
            new Expanded(
                flex: 14,
                child: Container(
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              new MaterialPageRoute(builder: (context) => ChiTietTkThanhToan())
                            );
                          },
                          child: new Stack(
                            alignment: const Alignment(-1.0, 1.0),
                            children: <Widget>[

                              Image.asset("assets/mastercard.png"),
                              Container(
                                padding: const EdgeInsets.only(bottom: 32.0, left: 32.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text("123456789"),
                                    Text("DUONG TRI TUE")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(32.0),
                         child: GestureDetector(
                           onTap: (){
                             Navigator.of(context).push(
                               new MaterialPageRoute(builder: (context) => ChiTietTkThanhToan())
                             );
                           },
                           child: new Stack(
                         alignment: const Alignment(-1.0, 1.0),
                        children: <Widget>[
                          Image.asset("assets/napas.png"),
                          Container(
                            padding: const EdgeInsets.only(bottom: 32.0, left: 32.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text("123456789"),
                                Text("DUONG TRI TUE")
                              ],
                            ),
                          )
                        ],
                      ),
                         ),
                      )
                    ],
                  ),

                ),
            ),

          ]

      ),

    );
  }
  void switchChanged(bool value) {}

}