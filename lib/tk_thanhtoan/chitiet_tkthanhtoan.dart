import 'dart:ui';

import 'package:emobilebanking/tk_thanhtoan/chitiet_lsgd.dart';
import 'package:emobilebanking/tk_thanhtoan/lichsugiaodich.dart';
import 'package:emobilebanking/tk_thanhtoan/tk_thanhtoan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChiTietTkThanhToan extends StatelessWidget {

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
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top:16.0),
                  width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text("Lịch sử giao dịch",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
                      onPressed: (){
                        Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) => TkThanhToan())
                        );
                      },
                    ),
                    trailing: Icon(Icons.arrow_back_ios, color: Colors.transparent,),
                    contentPadding: const EdgeInsets.only(left: 0.0),
                  )
              ),

            ),
            new Expanded(
                flex: 2,
                child: new Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.green[400], Colors.green[200]]
                    )
                  ),
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 32.0, right: 0.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                          child: new Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text("Tổng số dư"),
                              new Text("0 VND")
                            ],
                          )
                      ),
                      new Expanded(
                        child: new Container(

                        ),
                      )
                    ],
                  ),
                )
            ),
            new Expanded(
              flex: 6,
              child: new Container(
                  color: Colors.black12,
                  padding: const EdgeInsets.all(16.0),
                  child: new Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                    ),

                    child: new ListView(
                      children: <Widget>[
                        new Container(
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Container(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                                  child: new Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Text("TGTT SINH VIEN KHTN"),
                                      new Text("(CN) VND")
                                    ],
                                  ),
                                ),
                                new Container(
                                  color: Colors.blueAccent,
                                  child: new ListTile(
                                    title: Text("225378549 - DUONG TRI TUE"),
                                    trailing: Image.asset("name"),
                                  ),
                                ),
                                new Container(
                                  child: new Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Expanded(
                                              child: new Container(
                                                  padding: const EdgeInsets.all(16.0),
                                                  alignment: Alignment.centerLeft,
                                                  child: new Text("Số dư khả dụng")
                                              )
                                          ),
                                          new Expanded(
                                              child: new Container(
                                                  padding: const EdgeInsets.all(16.0),
                                                  alignment: Alignment.centerRight,
                                                  child: new Text("0 VND")
                                              )
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  )
              ),
            ),
            new Expanded(
              flex: 9,
              child: new Container(
                color: Colors.black12,
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 0.0, right: 16.0),
                        child: new Container(
                            height: 40.0,
                            child: new Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  flex: 2,
                                    child: new Container(
                                      alignment: Alignment.centerRight,
                                      child: new ListTile(
                                        leading: Icon(Icons.history, color: Colors.blue,),
                                        title: Text("Lịch sử giao dịch"),
                                      ),
                                    )
                                ),
                                new Expanded(
                                    child: new Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => LichSuGD())
                                          );
                                        },
                                        child: Text("Xem tất cả >",
                                        style: TextStyle(
                                            color: Colors.lightBlue[300],
                                            fontSize: 16.0
                                          ),
                                        ),
                                      ),
                                    )
                                )
                              ],
                            )
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new Container(

                          height: MediaQuery.of(context).size.height - 500.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: ListView(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                    new MaterialPageRoute(builder: (context) => ChitietGD())
                                  );
                                },
                                child: ListTile(
                                  title: Text("06/06/2020", style: TextStyle(color: Colors.grey)),
                                  subtitle: Text("Chuyển tiền cho ...", style: TextStyle(color: Colors.black),),
                                  trailing: Text("-10.000"),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) => ChitietGD())
                                  );
                                },
                                child: ListTile(
                                  title: Text("06/06/2020", style: TextStyle(color: Colors.grey)),
                                  subtitle: Text("Chuyển tiền cho ...", style: TextStyle(color: Colors.black),),
                                  trailing: Text("-10.000"),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) => ChitietGD())
                                  );
                                },
                                child: ListTile(
                                  title: Text("06/06/2020", style: TextStyle(color: Colors.grey)),
                                  subtitle: Text("Chuyển tiền cho ...", style: TextStyle(color: Colors.black),),
                                  trailing: Text("-10.000"),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) => ChitietGD())
                                  );
                                },
                                child: ListTile(
                                  title: Text("06/06/2020", style: TextStyle(color: Colors.grey)),
                                  subtitle: Text("Chuyển tiền cho ...", style: TextStyle(color: Colors.black),),
                                  trailing: Text("-10.000"),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) => ChitietGD())
                                  );
                                },
                                child: ListTile(
                                  title: Text("06/06/2020", style: TextStyle(color: Colors.grey)),
                                  subtitle: Text("Chuyển tiền cho ...", style: TextStyle(color: Colors.black),),
                                  trailing: Text("-10.000"),
                                ),
                              ),
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