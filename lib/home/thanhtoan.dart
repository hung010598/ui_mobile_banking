import 'dart:ui';

import 'package:emobilebanking/thanhtoan/dien.dart';
import 'package:emobilebanking/thanhtoan/dtddtratruoc.dart';
import 'package:emobilebanking/thanhtoan/internet.dart';
import 'package:emobilebanking/thanhtoan/maybay.dart';
import 'package:emobilebanking/thanhtoan/muamathe.dart';
import 'package:emobilebanking/thanhtoan/nuoc.dart';
import 'package:emobilebanking/thanhtoan/tauhoa.dart';
import 'package:emobilebanking/thanhtoan/truyenhinh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabThanhToan extends StatelessWidget {
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
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 32.0),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Thanh toán",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
            new Expanded(
                flex: 2,
                child: new Container(
                  color: Colors.blueAccent,
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nhập tên dịch vụ cần tìm",
                        suffixIcon: Icon(Icons.search),
                      ),
                      autofocus: false,
                      showCursor: false,

                    ),
                  ),
                )),
            new Expanded(
                flex: 12,
                child: new Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
                    child: new ListView(
                      children: <Widget>[
                        new Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          height: 270.0,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context, rootNavigator: true).push(
                                            new MaterialPageRoute(builder: (context) => DTDDTraTruoc())
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black12))),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Icon(
                                                Icons.smartphone,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "Nạp DTDĐ trả trước",
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context, rootNavigator: true).push(
                                              new MaterialPageRoute(builder: (context) => Dien())
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black12))),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Icon(
                                                Icons.lightbulb_outline,
                                                color: Colors.yellow,
                                              ),
                                              Text("Điện")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context, rootNavigator: true).push(
                                              new MaterialPageRoute(builder: (context) => Nuoc())
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black12))),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/water.png",
                                                width: 30.0,
                                                height: 30.0,
                                              ),
                                              Text("Nước")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.lightBlueAccent,
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context, rootNavigator: true).push(
                                              new MaterialPageRoute(builder: (context) => Internet())
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black12))),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.wifi,
                                                  color: Colors.blue,
                                                ),
                                                Text("Internet")
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context, rootNavigator: true).push(
                                              new MaterialPageRoute(builder: (context) => TruyenHinh())
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black12))),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.tv,
                                                  color: Colors.green,
                                                ),
                                                Text("Truyền hình")
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context, rootNavigator: true).push(
                                                new MaterialPageRoute(builder: (context) => VeMayBay())
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black12))),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.airplanemode_active,
                                                  color: Colors.white,
                                                ),
                                                Text("Vé máy bay")
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context, rootNavigator: true).push(
                                              new MaterialPageRoute(builder: (context) => VeTau())
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black12))),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Icon(
                                                Icons.train,
                                                color: Colors.blue,
                                              ),
                                              Text("Vé tàu")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.of(context, rootNavigator: true).push(
                                            new MaterialPageRoute(builder: (context) => MaThe())
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black12))),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Icon(
                                                Icons.credit_card,
                                                color: Colors.blue,
                                              ),
                                              Text("Mã thẻ DTDD")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: new Text(
                                  "Thanh toán tự động",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                ),
                              ),
                              new Container(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 16.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Expanded(
                                        child: new Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(
                                                  color: Colors.black12,
                                                  width: 1))),
                                      alignment: Alignment.center,
                                      child: new Text("Danh sách",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0)),
                                    )),
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.center,
                                        child: new Text("Tạo mới",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        new Container(
                          padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: new Text("Danh sách hóa đơn",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14.0)),
                              ),
                              new Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.0)),
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 16.0,),
                                  alignment: Alignment.center,
                                  child: new Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Text("Quý khách chưa có hóa đơn",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0)),
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    )))
          ]),
    );
  }

  void switchChanged(bool value) {}
}
