import 'dart:ui';

import 'package:emobilebanking/chuyentien/chuyenkhoanliennganhang.dart';
import 'package:emobilebanking/chuyentien/chuyentiennoibo.dart';
import 'package:emobilebanking/chuyentien/chuyentienquasothe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TabChuyenTien extends StatelessWidget {

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
              flex: 1,
              child: new Container(
                padding: const EdgeInsets.only(top: 32.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text("Chuyển tiền",
                style: TextStyle(
                  fontSize: 16.0
                ),
                ),
              ),
            ),
            new Expanded(
              flex: 9,
              child: new Stack(
                children: <Widget>[
                   new Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Expanded(
                        flex: 2,
                        child: new Container(
                          color: Colors.blueAccent,
                        ),
                      ),
                      new Expanded(
                        flex: 7,
                        child: new Container(
                          color: Colors.grey[50],
                        ),
                      )
                    ],
                  ),
                  new Container(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: new Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Expanded(
                          flex: 1,
                          child: new Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                            child:  new Text(
                              "Chuyển tiền đến",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        new Expanded(
                          flex: 4,
                          child: new Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: const EdgeInsets.only( left: 0.0, right: 0.0 ),
                            
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Container(
                                  height: 30.0,
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: new ListTile(
                                    title: Text("Chuyển khoản liên ngân hàng",style: TextStyle(fontSize: 14.0),),
                                    trailing: Icon(Icons.arrow_forward_ios,size: 14.0,),
                                    leading: Icon(Icons.account_balance, color: Colors.blue,),
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true).push(
                                        new MaterialPageRoute(builder: (context) => CKLienNganHang())
                                      );
                                    },
                                  ),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                  child: new Divider(
                                    color: Colors.black38,
                                  ),
                                ),
                                new Container(
                                  height: 20.0,
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: new ListTile(
                                    title: Text("Chuyển khoản nội bộ qua TK",style: TextStyle(fontSize: 14.0),),
                                    trailing: Icon(Icons.arrow_forward_ios,size: 14.0,),
                                    leading: Icon(Icons.loop, color: Colors.blue,),
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true).push(new MaterialPageRoute(builder: (context) => CKTKNoiBo()));
                                    },
                                  ),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                  child: new Divider(
                                    color: Colors.black38,
                                  ),
                                ),
                                new Container(
                                  height: 30.0,

                                  child: new ListTile(
                                    title: Align(
                                      child: Text("Chuyển khoản nội bộ qua thẻ", style: TextStyle(fontSize: 14.0),),

                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios, size: 14.0,),
                                    leading: Icon(Icons.credit_card, color: Colors.blue,),
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true).push(new MaterialPageRoute(builder: (context) => CKTheNoiBo()));
                                    },
                                  ),
                                ),

                                new Container(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                  child: new Divider(
                                    color: Colors.black38,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Expanded(
                                child: new Container(

                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  alignment: Alignment.bottomLeft,
                                  child: new Text("Danh sách người nhận"),
                                ),
                              ),


                            ],
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new Padding(

                              padding: const EdgeInsets.only(top: 0.0),
                            child: Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              
                              alignment: Alignment.center,
                              child: Text("Không có dữ liệu"),
                            ),
                          )
                        ),
                        new Expanded(
                          flex: 3,
                            child: new Container()
                        )
                      ],
                    ),
                  )

                ],
              ),
            )




          ]

      ),

    );
  }
  void switchChanged(bool value) {}

}