import 'package:flutter/material.dart';
import 'home.dart';

class ProfilPage extends StatelessWidget {
  static String tag = 'profil-page';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('PROFIL MAHASISWA',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 234, 222, 119),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              width: 230,
              child: Image.asset(
                'assets/images/krystal.jpg',
                height: 8,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'WINDI FAHMI ASRI',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, height: 2),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '201865007',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'TEKNIK INFORMATIKA',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
