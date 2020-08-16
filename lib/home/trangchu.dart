import 'dart:ui';

import 'package:emobilebanking/home/tietkiem.dart';
import 'package:emobilebanking/taikhoan/danhsachthe.dart';
import 'package:emobilebanking/taikhoanvay/taikhoanvay.dart';
import 'package:emobilebanking/tk_thanhtoan/tk_thanhtoan.dart';
import 'package:flutter/material.dart';


class TabTrangChu extends StatelessWidget {

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
  var data = "*****" ;
  var _value = false;
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
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text("Xin chào A",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ) ,
                ),
              ),
            ),

            new Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(

                      child: new Switch(onChanged: switchChanged,
                        value:_value,
                        activeColor: Colors.grey,
                      ),
                    ),
                    new Container(

                      child: Text("Hiển thị số tiền"),
                    )
                  ],
                )
            ),

            new Expanded(
              flex: 7,
              child: new Container(
                child: new GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1.5,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => TkThanhToan())
                        );
                      },
                      child: new Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new ClipOval(
                            child: new Container(
                              padding: const EdgeInsets.only(top: 32.0,left: 16.0, right: 16.0),
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height*0.4,

                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.lightBlue[900], Colors.lightBlue[400]]
                                  )
                              ),
                              alignment: Alignment.center,
                              child: new Column(
                                children: <Widget>[
                                  new Center(
                                    child: Text("Tài khoản thanh toán", textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  new Text(data, style: (TextStyle(color: Colors.white)),)
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context, rootNavigator: true).push(
                      new MaterialPageRoute(builder: (context) => TabTietKiem())
                  );
                },
                child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        new ClipOval(
                          child: new Container(
                            padding: const EdgeInsets.only(top: 32.0,left: 16.0, right: 16.0),
                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.lightGreen[900], Colors.lightGreen[400]]
                                )
                            ),
                            alignment: Alignment.center,
                            child: new Column(
                              children: <Widget>[
                                new Center(
                                  child: Text("Tài khoản tiết kiệm", textAlign: TextAlign.center, style: (TextStyle(color: Colors.white))),
                                ),
                                new Text(data, style: (TextStyle(color: Colors.white)))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context, rootNavigator: true).push(
                          new MaterialPageRoute(builder: (context) => TaiKhoanVay())
                        );
                      },
                      child: new Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new ClipOval(
                            child: new Container(
                              padding: const EdgeInsets.only(top: 32.0,left: 16.0, right: 16.0),
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height*0.4,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.grey, Colors.grey[200]]
                                  )
                              ),
                              alignment: Alignment.center,
                              child: new Column(
                                children: <Widget>[
                                  new Center(
                                    child: Text("Tài khoản vay", textAlign: TextAlign.center, style: (TextStyle(color: Colors.white))),
                                  ),
                                  new Text(data, style: (TextStyle(color: Colors.white)))
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context, rootNavigator: true).push(
                          new MaterialPageRoute(builder: (context) => DSThe())
                        );
                      },
                      child: new Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          new ClipOval(
                            child: new Container(
                              padding: const EdgeInsets.only(top: 32.0,left: 16.0, right: 16.0),
                              width: MediaQuery.of(context).size.width*0.4,
                              height: MediaQuery.of(context).size.height*0.4,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.lightBlue, Colors.lightBlue[200]]
                                  )
                              ),
                              alignment: Alignment.center,
                              child: new Column(
                                children: <Widget>[
                                  new Center(
                                    child: Text("Thẻ", textAlign: TextAlign.center, style: (TextStyle(color: Colors.white))),
                                  ),
                                  new Text("Xem chi tiết", style: (TextStyle(color: Colors.white)))
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),

              ),
            )


          ]

      ),

    );
  }
  void switchChanged(bool value) {
    setState(() {
      if(_value == false) {
        data = "10.000";
        _value = true;
      }
      else
        {
          data = "*****";
          _value = false;
        }
    });
  }

}