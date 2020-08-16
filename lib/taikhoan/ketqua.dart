
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/home/home.dart';
import 'package:emobilebanking/home/thanhtoan.dart';
import 'package:emobilebanking/home/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KetQuaMK extends StatelessWidget {

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
                  new Expanded(
                    flex: 2,
                    child: new Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: new Text("Kết quả"),
                    ),
                  ),
                  new Expanded(
                    flex: 16,
                    child: new Padding(

                      padding: const EdgeInsets.all(16.0),
                      child: new Wrap(
                        children: <Widget>[
                          new Container(
                            padding: const EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: new Column(
                              children: <Widget>[
                                Image.asset("assets/success.png", width: 50.0,height: 50.0,),
                                Text("Đổi mật khẩu thành công", style: TextStyle(fontSize: 24.0,color: Colors.black ),)
                              ],
                            ),
                          ),
                          new Container(
                            height: 100.0,
                            padding: const EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 16.0),
                                      child: GestureDetector(
                                        child: new Container(
                                          alignment: Alignment.center,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(30.0)
                                          ),
                                          child: new Text("HỦY"),
                                        ),
                                        onTap: (){
                                          Navigator.of(context).push(
                                              new MaterialPageRoute(builder: (context) => home(index: 3,)));
                                        },
                                      ),

                                    )
                                ),
                                new Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: GestureDetector(
                                      child: new Container(
                                        alignment: Alignment.center,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(30.0)
                                        ),
                                        child: new Text("TIẾP TỤC"),
                                      ),
                                      onTap: (){
                                        Navigator.of(context).push(
                                            new MaterialPageRoute(builder: (context) => home(index: 3,)));
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ),


                ]

            ),

          ],
        )

    );
  }
}