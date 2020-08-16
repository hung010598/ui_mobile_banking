/*
Nguyen Duc Hoang (Mr)
Programming tutorial channel:
https://www.youtube.com/c/nguyenduchoang
Flutter, React, React Native, IOS development, Swift, Python, Angular
* */
import 'dart:ui';

import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/home/thanhtoan.dart';
import 'package:emobilebanking/home/them.dart';
import 'package:emobilebanking/home/tietkiem.dart';
import 'package:emobilebanking/home/trangchu.dart';
import 'package:flutter/material.dart';


//Define "root widget"
void main() => runApp(new home());//one-line function

class home extends StatelessWidget {
  final int index ;

  const home({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final tabController = new DefaultTabController(
      length: 4,
      initialIndex: index??0,
      child: new Scaffold(
        bottomNavigationBar: menu(),
        body: new TabBarView(

            children: [
              new TabTrangChu(),
              new TabChuyenTien(),

              new TabThanhToan(),
              new TabThem()
            ]
        ),
      ),
    );
    return new MaterialApp(

        home: tabController
    );
  }
  Widget menu() {
    return Container(
      color: Color(0xFF3F5AA6),
      child: TabBar(
        labelColor: Colors.lightBlue,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        
        indicatorPadding: EdgeInsets.all(5.0),
        indicator: null,
        indicatorColor: Colors.blue,

        tabs: [
          Tab(
            text: "Thẻ",
            icon: Icon(Icons.credit_card),
          ),
          Tab(
            text: "Chuyển tiền",
            icon: Icon(Icons.loop),
          ),

          Tab(
            text: "Thanh toán",
            icon: Icon(Icons.monetization_on),
          ),
          Tab(
            text: "Thêm",
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );

  }
}







