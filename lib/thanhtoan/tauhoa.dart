
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/xacthucnoibo.dart';
import 'package:emobilebanking/home/home.dart';
import 'package:emobilebanking/home/thanhtoan.dart';
import 'package:emobilebanking/thanhtoan/xacnhantau.dart';
import 'package:emobilebanking/thanhtoan/xacthucinternet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(VeTau());
}
class VeTau extends StatelessWidget {

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
  var _visibleGia = false;
  var nganhang = null;
  var menhgia = null;
  var _color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body:
        Stack(
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
                      child: new Text("Thanh toán vé tàu"),
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
                                      labelText: ("Tài khoản nguồn"),
                                      suffixIcon: Icon(icon)
                                  ),
                                  controller: TextEditingController(
                                    text: ("3606205269194"),

                                  ),
                                  enabled: false,
                                ),

                                new TextField(
                                  readOnly: true,
                                  decoration:  InputDecoration(
                                      labelText: ("Nhà cung cấp"),
                                      suffixIcon: Icon(icon)

                                  ),
                                  controller: TextEditingController(
                                      text: "Công ty đường sắt Việt Nam"
                                  ),

                                ),
                                new TextField(

                                  decoration:  InputDecoration(
                                    labelText: ("Mã thanh toán"),
                                  ),

                                ),
                              ],
                            ),
                          ),
                          new Container(
                            height: 100.0,
                            padding: const EdgeInsets.all(16.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 16.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              new MaterialPageRoute(builder: (context) => home(index: 2,))
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
                                            new MaterialPageRoute(builder: (context) => XacNhanTau()));
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
            Container(
              padding: const EdgeInsets.only(top: 100.0, left: 32.0, right: 32.0),
              color:_color,
              child: new Visibility(
                  visible: _visible,

                  child: new Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                          height: 50.0,

                          alignment: Alignment.center,
                          child: Text("Nhà cung cấp"),
                        ),
                        Container(
                          color: Colors.grey[300],
                          height: 50.0,
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Nhập tên nhà cung cấp",
                                  suffixIcon: Icon(Icons.search),
                                  border: InputBorder.none
                              ),
                              autofocus: false,
                              showCursor: false,

                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)
                              )
                          ),
                          height: MediaQuery.of(context).size.height - 300.0,
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Image.asset("assets/vietnamairline.png"),
                                title: Text("Vietnam Airlines"),

                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Vietnam Airlines";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/vietjetair.jpg"),
                                title: Text("Vietjet Air"),

                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Vietjet Air";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/jetstarpacific.png", width: 60.0,),
                                title: Text("Jetstar Pacific Airlines"),

                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Jetstar Pacific Airlines";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/bambooairways.png"),
                                title: Text("Bamboo Airways"),

                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Bamboo Airways";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 100.0, left: 32.0, right: 32.0),
              color:_color,
              child: new Visibility(
                  visible: _visibleGia,

                  child: new Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                          height: 50.0,

                          alignment: Alignment.center,
                          child: Text("Thời gian"),
                        ),

                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)
                              )
                          ),
                          height: MediaQuery.of(context).size.height - 300.0,
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text("1/6-30/6"),

                                onTap: (){
                                  setState(() {
                                    _visibleGia = false;
                                    menhgia = "1/6-30/6";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text("1/7-31/7"),

                                onTap: (){
                                  setState(() {
                                    _visibleGia = false;
                                    menhgia = "1/7-31/7";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text("1/8-31/8"),

                                onTap: (){
                                  setState(() {
                                    _visibleGia = false;
                                    menhgia = "1/8-31/8";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text("1/9-30/9"),

                                onTap: (){
                                  setState(() {
                                    _visibleGia = false;
                                    menhgia = "1/9-30/9";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text("1/10-31/10"),

                                onTap: (){
                                  setState(() {
                                    _visibleGia = false;
                                    menhgia = "1/10-30/10";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
            )
          ],
        )

    );
  }
  void switchChanged(bool value) {}

}