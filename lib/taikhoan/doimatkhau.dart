
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/home/home.dart';
import 'package:emobilebanking/taikhoan/ketqua.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DoiMatKhau());
}
class DoiMatKhau extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color.fromARGB(255, 243, 243, 243),
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
                color: Colors.blue,
                padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: new Text("Đổi mật khẩu",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0
                ),),
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
                            onTap: () {
                              setState(() {
                                icon= Icons.search;
                              });
                            },
                            decoration:  InputDecoration(
                                labelText: ("Mật khẩu cũ"),
                                suffixIcon: Icon(icon)
                            ),

                          ),
                          new TextField(

                            decoration:  InputDecoration(
                                labelText: ("Mật khẩu mới"),
                                suffixIcon: Icon(icon)
                            ),
                            controller: TextEditingController(
                            ),

                          ),
                          new TextField(

                            decoration:  InputDecoration(
                                labelText: ("Xác nhận mật khẩu mới"),
                                suffixIcon: Icon(icon)
                            ),
                            controller: TextEditingController(
                            ),

                          ),

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
                                      new MaterialPageRoute(builder: (context) => KetQuaMK()));
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

    );
  }
  void switchChanged(bool value) {}

}