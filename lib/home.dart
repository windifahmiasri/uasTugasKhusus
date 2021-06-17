import 'dart:ui';

import 'package:flutter/material.dart';
import 'login.dart';
import 'profil.dart';
import 'khs.dart';
import 'krs.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text(
            'PORTAL AKADEMIK',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 250, 241, 165),
          leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Text(
                'Selamat Datang, Windi Fahmi Asri',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    height: 3.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                'Selamat Datang di Portal Akademik. Portal Akademik adalah sistem yang memungkinkan para civitas akademika UNIVERSITAS PAPUA untuk menerima informasi dengan lebih cepat melalui internet. Sistem ini diharapkan dapat memberi kemudahan setiap civitas akademika untuk melakukan aktivitas-aktivitas akademik dan proses belajar mengajar. Selamat menggunakan fasilitas ini:)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  wordSpacing: 4,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'AKADEMIK',
                style: TextStyle(
                    color: Colors.black,
                    height: 3,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(20.0),
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    width: 157,
                    color: Color.fromARGB(255, 234, 222, 119),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset('assets/images/profil.png'),
                        MaterialButton(
                          minWidth: 200.0,
                          height: 42.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed(ProfilPage.tag);
                          },
                          color: Color.fromARGB(255, 234, 222, 119),
                          child: Text(
                            'Profil Mahasiswa',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 157,
                    color: Color.fromARGB(255, 234, 222, 119),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset('assets/images/KRS.png'),
                        MaterialButton(
                          minWidth: 200.0,
                          height: 42.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed(KrsPage.tag);
                          },
                          color: Color.fromARGB(255, 234, 222, 119),
                          child: Text(
                            'KRS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 157,
                    color: Color.fromARGB(255, 234, 222, 119),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset('assets/images/khs.png'),
                        MaterialButton(
                          minWidth: 200.0,
                          height: 42.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed(KhsPage.tag);
                          },
                          color: Color.fromARGB(255, 234, 222, 119),
                          child: Text(
                            'KHS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
