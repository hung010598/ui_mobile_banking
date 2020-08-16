
import 'dart:io';
import 'dart:ui';

import 'package:emobilebanking/chuyentien/xacthucliennganhang.dart';
import 'package:emobilebanking/home/chuyentien.dart';
import 'package:emobilebanking/home/home.dart';
import 'package:emobilebanking/tk_thanhtoan/chitiet_lsgd.dart';
import 'package:emobilebanking/tk_thanhtoan/chitiet_tkthanhtoan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LichSuGD extends StatelessWidget {

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
  var _visibleLich = false;
  var nganhang = null;
  var _color = Colors.transparent;
  static DateTime dateStart = DateTime.now();
  var formattedDateStart = '${dateStart.day}/${dateStart.month}/${dateStart.year}';
  static DateTime dateEnd = DateTime.now();
  var formattedDateEnd = '${dateEnd.day}/${dateEnd.month}/${dateEnd.year}';
  int selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
  }
  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }
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
                          title: Text("Lịch sử giao dịch",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                          leading: IconButton(
                            icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => ChiTietTkThanhToan())
                              );
                            },
                          ),
                          trailing: Icon(Icons.arrow_back_ios, color: Colors.transparent,),
                          contentPadding: const EdgeInsets.only(left: 0.0),
                        )
                    ),
                  ),
                  new Expanded(
                    flex: 9,
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
                                    labelText: ("Hình thức giao dịch"),
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: ()async{
                                          final dtPick = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2025));
                                          if(dtPick != null )
                                            {
                                              setState(() {
                                                formattedDateStart = '${dtPick.day}/${dtPick.month}/${dtPick.year}';
                                              });
                                            }
                                        },
                                        child: ListTile(
                                          title: Text("Từ ngày", style: TextStyle(color: Colors.grey),),
                                          subtitle: Text(formattedDateStart, style: TextStyle(color: Colors.black),),
                                          trailing: Icon(Icons.keyboard_arrow_down, color: Colors.blue,),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: ()async{
                                          final dtPick = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2025));
                                          if(dtPick != null )
                                          {
                                            setState(() {
                                              formattedDateEnd = '${dtPick.day}/${dtPick.month}/${dtPick.year}';
                                            });
                                          }
                                        },
                                        child: ListTile(
                                          title: Text("Đến ngày", style: TextStyle(color: Colors.grey),),
                                          subtitle: Text(formattedDateEnd, style: TextStyle(color: Colors.black),),
                                          trailing: Icon(Icons.keyboard_arrow_down, color: Colors.blue,),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                Expanded(
                                  child: Container(),
                                ),
                                new Expanded(
                                  flex: 2,
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
                                        child: new Text("Xem lịch sử"),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          _visibleLich = true;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(

                                  child: Container(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ),
                  Expanded(
                    flex: 8,
                    child: Visibility(
                      visible: _visibleLich,
                      child: new Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
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
                                      new MaterialPageRoute(builder: (context) => ChitietGD(ind: 0,))
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
                                      new MaterialPageRoute(builder: (context) => ChitietGD(ind: 0,))
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
                                      new MaterialPageRoute(builder: (context) => ChitietGD(ind: 0,))
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
                                      new MaterialPageRoute(builder: (context) => ChitietGD(ind: 0,))
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
                                      new MaterialPageRoute(builder: (context) => ChitietGD(ind: 0,))
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
                      ),
                    ),
                  )

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
                          child: Text("Hình thức giao dịch"),
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
                                  labelText: "Hình thức giao dịch",
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
                                leading: Radio(
                                  value: 1,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Chuyển khoản liên ngân hàng"),
                                onTap: (){
                                  setSelectedRadio(1);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Chuyển khoản liên ngân hàng";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                value: 2,
                                groupValue: selectedRadio,
                                activeColor: Colors.blue,
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                              ),
                                title: Text("Chuyển khoản nội bộ qua số tk"),
                                onTap: (){
                                  setSelectedRadio(2);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Chuyển khoản nội bộ qua số tk";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 3,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Chuyển khoản nội bộ qua só thẻ"),
                                onTap: (){
                                  setSelectedRadio(3);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Chuyển khoản nội bộ qua só thẻ";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 4,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Mua mã thẻ di động"),
                                onTap: (){
                                  setSelectedRadio(4);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Mua mã thẻ di động";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 5,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Nạp điện thoại"),
                                onTap: (){
                                  setSelectedRadio(5);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Nập điện thoại";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 6,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Thanh toán tiền điện"),
                                onTap: (){
                                  setSelectedRadio(6);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Thanh toán tiền điện";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 7,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Thanh toán tiền nước"),
                                onTap: (){
                                  setSelectedRadio(7);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Thanh toán tiền nước";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 8,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Mua vé máy bay"),
                                onTap: (){
                                  setSelectedRadio(8);
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Mua vé máy bay";
                                    _color = Colors.transparent;
                                  });
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 9,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Mua vé tàu"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Mua vé tàu";
                                    _color = Colors.transparent;
                                  });
                                  setSelectedRadio(9);
                                },
                              ),
                              ListTile(
                                leading: Radio(
                                  value: 10,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.blue,
                                  onChanged: (val){
                                    setSelectedRadio(val);
                                  },
                                ),
                                title: Text("Thanh toán truyền hình"),
                                onTap: (){
                                  setState(() {
                                    _visible = false;
                                    nganhang = "Thanh toán truyền hình";
                                    _color = Colors.transparent;
                                  });
                                  setSelectedRadio(10);
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

          ],
        )

    );
  }
}