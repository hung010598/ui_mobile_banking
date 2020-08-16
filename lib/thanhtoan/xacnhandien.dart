
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/ketqua.dart';
import 'package:emobilebanking/home/thanhtoan.dart';
import 'package:emobilebanking/thanhtoan/ketqua.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XacNhanDien extends StatelessWidget {

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
                      child: new Text("Xác thực thanh toán"),
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
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: new Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8.0, top: 16.0),
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Tài khoản nguồn", style: TextStyle(color: Colors.grey),),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("123456789", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Nhà cung cấp", style: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("XYZ", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Số hợp đồng", style: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("123456789", style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Số tiền", style: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("100.000 VND", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 1.0,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top:16.0),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Nội dung", style: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("abcxyz", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                                        ),
                                      )
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                          new Container(
                            height: 100.0,
                            padding: const EdgeInsets.all(16.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 16.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              new MaterialPageRoute(builder: (context) => TabThanhToan())
                                          );
                                        },
                                        child: new Container(
                                          alignment: Alignment.center,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(30.0)
                                          ),
                                          child: new Text("HỦY"),
                                        ),
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
                                            new MaterialPageRoute(builder: (context) => KetQuaThanhToan()));
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