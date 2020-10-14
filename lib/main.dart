import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dzikirPagi.dart' as pagi;
import 'dzikirSore.dart' as petang;
import 'waktuSholat.dart' as waktuSholat;
import 'mainAlQuran.dart' as alquran;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.purple,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          title: Text("Mesin Pencari Sunnah", style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Image.network("https://lh3.googleusercontent.com/XmhMoE93Z5RReEawJCL6ra38BmSZFzdrCu8GEg-N-ml2gt0-nvJULjUBebkIFR7wEg=h800"),
                ),
                ListTile(
                  title: Text('Baca Quran'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => alquran.MainAlQuran() )
                    );
                  },
                ),
                ListTile(
                  title: Text('Ruang Chat'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // do something
                  },
                ),
                ListTile(
                  title: Text('info Kajian'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // do something// do something
                  },
                ),
                ListTile(
                  title: Text('Waktu Shalat'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => waktuSholat.waktuSholat() )
                    );
                  },
                ),
                ListTile(
                  title: Text('Dzikir Pagi'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pagi.DzikirPagi() )
                    );
                  },
                ),
                ListTile(
                  title: Text('Dzikir Petang'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => petang.DzikirPetang() )
                    );
                  },
                ),
                ListTile(
                  title: Text('Masjid Terdekat'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // do somethingx
                  },
                ),
                ListTile(
                  title: Text('Histori Pencarian'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // do something
                  },
                ),
              ],
            ),
            top: true,
            right: true,
            left: true,
            bottom: true,
          ),


        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Image.network("https://lh3.googleusercontent.com/XmhMoE93Z5RReEawJCL6ra38BmSZFzdrCu8GEg-N-ml2gt0-nvJULjUBebkIFR7wEg=h800"),
                  SizedBox(height: 50.0,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Apa yang antum cari?",
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Lanjutkan Membaca Al-Qaari'ah?", style: TextStyle(fontSize: 12, color: Colors.white) ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Center(
                    child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => alquran.MainAlQuran() )
                              );
                            },
                            child: Container(
                              width: 65,
                              height: 100,
                              padding: EdgeInsets.all(10.0),
                              child: Column (
                                  children: <Widget> [
                                    Center (
                                      child: Image.network
                                        ('https://static.thenounproject.com/png/1546-200.png',
                                        width: 30,
                                        height: 40,
                                        alignment: Alignment.center,),
                                    ),
                                    Padding(padding: EdgeInsets.all(4)),
                                    Text('Baca Alquran', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                  ]
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // border: Border.all(color: Colors.green,width: 5.0)
                                  color: Colors.white
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              width: 65,
                              height: 100,
                              padding: EdgeInsets.all(10.0),
                              child: Column (
                                  children: <Widget> [
                                    Center (
                                      child: Image.network
                                        ('https://webstockreview.net/images/conversation-clipart-group-chat-6.png',
                                        width: 30,
                                        height: 40,
                                        alignment: Alignment.center,),
                                    ),
                                    Padding(padding: EdgeInsets.all(4)),
                                    Text('Ruang Chat', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                  ]
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // border: Border.all(color: Colors.green,width: 5.0)
                                  color: Colors.white
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              width: 65,
                              height: 100,
                              padding: EdgeInsets.all(10.0),
                              child: Column (
                                  children: <Widget> [
                                    Center (
                                      child: Image.network
                                        ('https://image.freepik.com/free-icon/info-logo-circle_318-947.jpg',
                                        width: 30,
                                        height: 40,
                                        alignment: Alignment.center,),
                                    ),
                                    Padding(padding: EdgeInsets.all(4)),
                                    Text('Info kajian', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                  ]
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // border: Border.all(color: Colors.green,width: 5.0)
                                  color: Colors.white
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => waktuSholat.waktuSholat() ));
                            },
                            child: Container(
                              width: 65,
                              height: 100,
                              padding: EdgeInsets.all(10.0),
                              child: Column (
                                  children: <Widget> [
                                    Center (
                                      child: Image.network
                                        ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT9WGwnAElS7lGrAwqlca0hLGCJkmfamNjusA&usqp=CAU',
                                        width: 30,
                                        height: 40,
                                        alignment: Alignment.center,),
                                    ),
                                    Padding(padding: EdgeInsets.all(4)),
                                    Text('Waktu Shalat', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                  ]
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // border: Border.all(color: Colors.green,width: 5.0)
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row (
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => pagi.DzikirPagi() ));
                          },
                          child: Container(
                            width: 65,
                            height: 100,
                            padding: EdgeInsets.all(12.0),
                            child: Column (
                                children: <Widget> [
                                  Center (
                                    child: Image.network
                                      ('https://www.iconfinder.com/data/icons/good-morning-glyph/100/sunrise_sun_horizon_morning_weather-512.png',
                                      width: 30,
                                      height: 40,
                                      alignment: Alignment.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Text('Dzikir pagi', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                // border: Border.all(color: Colors.green,width: 5.0)
                                color: Colors.white
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => petang.DzikirPetang() ));
                          },
                          child: Container(
                            width: 65,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            child: Column (
                                children: <Widget> [
                                  Center (
                                    child: Image.network
                                      ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT6bMtX7bBDzibCY9V4cG8vQZ0Kgtoih0zNbw&usqp=CAU',
                                      width: 30,
                                      height: 40,
                                      alignment: Alignment.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Text('Dzikir Petang', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                // border: Border.all(color: Colors.green,width: 5.0)
                                color: Colors.white
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => petang.DzikirPetang() ));
                          },
                          child: Container(
                            width: 65,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            child: Column (
                                children: <Widget> [
                                  Center (
                                    child: Image.network
                                      ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSXnug4GR_dMdt0SGEMtiruI9Sjm6rvxHk5lg&usqp=CAU',
                                      width: 30,
                                      height: 40,
                                      alignment: Alignment.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Text('masjid Terdekat', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                // border: Border.all(color: Colors.green,width: 5.0)
                                color: Colors.white
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            width: 65,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            child: Column (
                                children: <Widget> [
                                  Center (
                                    child: Image.network
                                      ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0n3o-dkCSSWK42aENqBSUe_qD1qCF1QJOnw&usqp=CAU',
                                      width: 30,
                                      height: 40,
                                      alignment: Alignment.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(4)),
                                  Text('Histori Pencarian', textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                // border: Border.all(color: Colors.green,width: 5.0)
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Artikel Instan Untuk Antum', style: TextStyle(fontSize: 13, color: Colors.white) ),
                  ),
                  SizedBox(height: 20.0,),

                ],
              ),
            ),
            ListTile(
              title: Container(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("artikeltapped");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network('https://www.ruparupa.com/blog/wp-content/uploads/2020/01/BERSAMA-CEGAH-VIRUS-CORONA-MENGEPIDEMI-INDONESIA.jpg', scale: 1.0),
                          title: Text('Kapan Pandemi Ini Berakhir', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("artikeltapped");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEp07eartCHMtAC8ZdoTR2dwOKK8upkGBR4Q&usqp=CAU', scale: 1.0),
                          title: Text('Keutamaan Sholat 5 Waktu', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("artikeltapped");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ28U9TQ0u1C-zjR9-17hrSpaKokYULRLQstA&usqp=CAU', scale: 1.0),
                          title: Text('Keutamaan Membaca Alquran', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}