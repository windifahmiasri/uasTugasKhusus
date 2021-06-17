import 'package:flutter/material.dart';
import 'package:uasss/khs.dart';
import 'package:uasss/krs.dart';
import 'package:uasss/profil.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ProfilPage.tag: (context) => ProfilPage(),
    KrsPage.tag: (context) => KrsPage(),
    KhsPage.tag: (context) => KhsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      routes: routes,
    );
  }
}
