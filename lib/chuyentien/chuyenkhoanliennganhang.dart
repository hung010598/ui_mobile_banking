
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/xacthucliennganhang.dart';
import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CKLienNganHang extends StatelessWidget {

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
                      child: new Text("CK liên ngân hàng"),
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

                                ),
                                new TextFormField(
                                  readOnly: true,
                                  decoration:  InputDecoration(
                                    labelText: ("Ngân hàng thụ hưởng"),
                                    suffixIcon: Icon(icon),

                                  ),
                                  controller: TextEditingController(
                                      text: nganhang
                                  ),
                                  onTap: (){
                                    setState(() {
                                      if(_visible == false)
                                      {
                                        _visible = true;
                                        _color = const Color(0x80e0F2F1);
                                      }
                                      else
                                      {
                                        _visible = false;
                                        _color = Colors.transparent;
                                      }
                                    });
                                  },
                                ),
                                new TextField(

                                  decoration:  InputDecoration(
                                    labelText: ("Số thẻ/Số TK hưởng"),
                                  ),


                                ),
                                new Container(
                                  alignment: Alignment.center,
                                  child: new TextField(

                                    decoration:  InputDecoration(
                                        labelText: ("Số tiền"),
                                        suffixIcon: Container(child: Text("VND"), alignment: Alignment.centerRight, width: 10.0,)
                                    ),


                                  ),
                                ),

                                new TextFormField(

                                  decoration:  InputDecoration(
                                    labelText: ("Nội dung"),

                                  ),
                                )
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
                                            new MaterialPageRoute(builder: (context) => home(index: 1,))
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
                                            new MaterialPageRoute(builder: (context) => XacThucLienNganHang()));
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
                          child: Text("Ngân hàng thụ huỏng"),
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
                                leading: Image.asset("assets/vietcombank.jpg"),
                                title: Text("Vietcombank"),
                                subtitle: Text("Ngân hàng TMCP Ngoại Thương Việt Nam"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Vietcombank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/bidv.png"),
                                title: Text("BIDV"),
                                subtitle: Text("Ngân hàng TMCP Đầu tư và Phát triển Việt Nam"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "BIDV";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/viettinbank.jpg"),
                                title: Text("Viettinbank"),
                                subtitle: Text("Ngân hàng TMCP Công Thương Việt Nam"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Viettinbank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/vpbank.jpg"),
                                title: Text("VPBank"),
                                subtitle: Text("Ngân hàng TMCP Việt Nam Thịnh Vượng"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "VPBank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/techcombank.jpg"),
                                title: Text("Techcombank"),
                                subtitle: Text("Ngân hàng TMCP Kỹ thương Việt Nam"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Techcombank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/abbank.png", width: 60.0,height: 60.0,),
                                title: Text("ABBank"),
                                subtitle: Text("Ngân hàng TMCP An Bình"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "ABBank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/eximbank.png"),
                                title: Text("Eximbank"),
                                subtitle: Text("Ngân hàng TMCP Xuất nhập khẩu Việt Nam"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Eximbank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/scb.png"),
                                title: Text("SCB"),
                                subtitle: Text("Ngân hàng TMCP Sài Gòn"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "SCB";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/oceanbank.png"),
                                title: Text("Oceanbank"),
                                subtitle: Text("Ngân hàng TMCP Đại Dương"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Oceanbank";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Image.asset("assets/sacombank.png"),
                                title: Text("Sacombank"),
                                subtitle: Text("Ngân hàng TMCP Sài Gòn Thương Tín"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Sacombank";
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
}