import 'dart:ui';

import 'package:emobilebanking/taikhoan/doimatkhau.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class TabThem extends StatelessWidget {

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

      body: new Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: new ListView(
          children: <Widget>[
            new Container(
              alignment: Alignment.center,
              height: 100.0,

              child: Image.asset("assets/logo.png", width: 100.0,height: 100.0,),
            ),
            new Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: new ListTile(
                leading: Image.asset("assets/account.png", width: 30.0,height: 30.0,),
                title: Text("DUONG TRI TUE"),
                trailing: Icon(Icons.arrow_forward_ios, size: 20.0,),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: new Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context, rootNavigator: true).push(
                          new MaterialPageRoute(builder: (context) => DoiMatKhau())
                        );
                      },
                       child: new ListTile(
                          leading: Icon(Icons.settings, color: Colors.blue,),
                          title: Text("Đổi mật khẩu",style: TextStyle(fontSize: 14.0),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16.0,),
                        )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: new Divider(
                        color: Colors.black12,
                      ),
                    ),

                    new ListTile(
                      leading: Icon(Icons.share, color: Colors.blue,),
                      title: Text("Chia sẻ thông tin tài khoản",style: TextStyle(fontSize: 14.0),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 16.0,),
                    ),
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: new Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ListTile(
                      leading: Icon(Icons.message, color: Colors.blue,),
                      title: Text("Điều khoản và điều kiện sử dụng",style: TextStyle(fontSize: 14.0),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 16.0,),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: new Divider(
                        color: Colors.black12,
                      ),
                    ),
                    new ListTile(
                      leading: Icon(Icons.help_outline, color: Colors.blue,),
                      title: Text("Câu hỏi thường gặp",style: TextStyle(fontSize: 14.0),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 16.0,),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: new Divider(
                        color: Colors.black12,
                      ),
                    ),
                    new ListTile(
                      leading: Icon(Icons.contacts, color: Colors.blue,),
                      title: Text("Liên hệ", style: TextStyle(fontSize: 14.0),),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16.0,),
                    )
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),

                
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ListTile(
                      leading: Icon(Icons.power_settings_new, color: Colors.red,),
                      title: Text("Đăng xuất", style: TextStyle(fontSize: 14.0),),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16.0,),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      )

    );
  }
  void switchChanged(bool value) {}

}