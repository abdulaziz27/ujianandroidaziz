import 'package:flutter_project/viewModel/AyatViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailAlQuran extends StatefulWidget {
  final String nomor;
  final String nama;

  DetailAlQuran({this.nomor, this.nama});

  @override
  _DetailAlQuranState createState() => _DetailAlQuranState();
}

class _DetailAlQuranState extends State<DetailAlQuran> {
  List dataAyat = List();

  void getAyat(){
    AyatViewModel().getAyat(int.parse(widget.nomor)).then((value) {
      setState(() {
        dataAyat = value;
      });
    });
  }

  @override
  void initState(){
    super.initState();
    getAyat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("${widget.nama}"),
      ),
      body: dataAyat == null ? Center(child: CircularProgressIndicator(),) : ListView.builder(
        itemCount: dataAyat.length,
        itemBuilder: (context, i){
          return ListTile(
              title: Container(
                padding: EdgeInsets.only(top:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(dataAyat[i].ar ?? ""),
                    Html(data: dataAyat[i].tr ?? ""),
                    Text(dataAyat[i].id ?? ""),
                  ],
                ),
              ),

          );
        },
      ),
    );
  }
}

