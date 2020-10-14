import 'package:flutter_project/DetailAlQuran.dart';
import 'package:flutter_project/viewModel/AlQuranViewModel.dart';
import 'package:flutter/material.dart';

class AlQuran extends StatefulWidget {
  @override
  _AlQuranState createState() => _AlQuranState();
}

class _AlQuranState extends State<AlQuran> {
  List dataAlQuran = List();
  void getListSurat(){
    AlQuranViewModel().getAlQuran().then((value) {
      setState(() {
        dataAlQuran = value;
      });
    });
  }

  @override
  void initState(){
    super.initState();
    getListSurat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Al-Quran"),
        actions: <Widget>[
          IconButton(
            icon : Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: (){
            },
          ),
          IconButton(
            icon : Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: (){
            },
          ),
        ],
      ),
      body: dataAlQuran == null ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          itemCount: dataAlQuran.length,
          itemBuilder: (context, i){
            return ListTile(
//              leading: ClipOval(
//                child: Container(
//                  color: Colors.lightBlue,
//                  padding: EdgeInsets.all(15),
//                  child: Text(
//                    "${dataAlQuran[i].nomor}",
//                    style: TextStyle(color: Colors.black),
//                  ),
//                ),
//              ),
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
//                  backgroundColor: Colors.purple.shade800,
                  child: Text('${dataAlQuran[i].nomor}'),
                ),
              title: Text("${dataAlQuran[i].nama}"),
              subtitle: Text("${dataAlQuran[i].type} | ${dataAlQuran[i].ayat} ayat"),
              trailing: Text("${dataAlQuran[i].asma}"),
              onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context){
                   return DetailAlQuran(
                     nomor: dataAlQuran[i].nomor,
                     nama: dataAlQuran[i].nama,
                   );
                 }
               ));
              }
            );
          },
      ),
    );
  }
}

