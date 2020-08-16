
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/xacthucliennganhang.dart';
import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

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
  var icon = Icons.keyboard_arrow_down;
  var _visible = false;
  var nganhang = null;
  var _color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body:
        new Stack(
          children: <Widget>[
            new Column(

                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 64.0),
                    height: 150.0,

                    child: Image.asset("assets/logo.png"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 32.0),
                    alignment: Alignment.center,
                    child: Text("Đăng nhập", style: TextStyle(color: Colors.blue, fontSize: 24.0),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
                    child: new TextField(


                      decoration:  InputDecoration(
                          labelText: ("Tên đăng nhập"),

                      ),


                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
                    child: new TextField(


                      decoration:  InputDecoration(
                          labelText: ("Mật khẩu"),

                      ),


                    ),
                  ),
                  Container(
                    height: 80.0,
                    padding: const EdgeInsets.only(left: 64.0, right: 64.0, top: 32.0),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => home())
                        );
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        alignment: Alignment.center,
                        /*padding: const EdgeInsets.only(top: 32.0, left: 64.0, right: 64.0, bottom: 64.0),*/
                        child: Text("Đăng nhập", style: TextStyle(fontSize: 20.0),),
                      ),
                    ),
                  )
                ]
            ),
           
          ],
        )

    );
  }
}