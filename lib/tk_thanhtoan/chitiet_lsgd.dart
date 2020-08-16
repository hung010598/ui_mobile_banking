
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/xacthucliennganhang.dart';
import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/tk_thanhtoan/chitiet_tkthanhtoan.dart';
import 'package:emobilebanking/tk_thanhtoan/tk_thanhtoan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChitietGD extends StatelessWidget {
  final int ind;

  const ChitietGD({Key key, this.ind}) : super(key: key);
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
                        alignment: Alignment.center,
                        color: Colors.blue[400],
                        padding: const EdgeInsets.only(top:16.0),
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                          title: Text("Chi tiết giao dịch",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                          leading: IconButton(
                            icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                            onPressed: ()async{
                              Navigator.of(context).push(
                                  new MaterialPageRoute(builder: (context) => ChiTietTkThanhToan())
                              );
                            },
                          ),
                          trailing: Icon(Icons.arrow_back_ios, color: Colors.transparent,),
                          contentPadding: const EdgeInsets.only(left: 0.0),
                        )
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
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                      labelText: ("Ngày giao dịch"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("11/07/2020"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),
                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                    labelText: ("Thời gian giao dịch"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("9:30"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),
                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                    labelText: ("Số tiền giao dịch"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("100.000 VND"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),
                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                    labelText: ("Chi nhánh"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("abc, xyz"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),

                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                    labelText: ("Loại tiền tệ"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("VND"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),
                                new TextField(
                                  readOnly: true,

                                  decoration:  InputDecoration(
                                    labelText: ("Nội dung giao dịch"),
                                  ),
                                  controller: TextEditingController(
                                    text: ("nội dung demo"),

                                  ),
                                  autofocus: false,
                                  autocorrect: false,
                                ),
                              ],
                            ),
                          ),

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