import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'AdminPage.dart';

class EditData extends StatefulWidget {
  //variabel nangkep index dan list
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  
   TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerTempat = new TextEditingController();
  TextEditingController controllerHarga = new TextEditingController();
  TextEditingController controllerLama = new TextEditingController();
  TextEditingController controllerTanggal = new TextEditingController();

  void editData() {
    var url="http://192.168.43.80:8080/api_pariwisata/editdata.php";
    http.post(url, body: {
      "id": widget.list[widget.index]['id'],
      "nama": controllerNama.text,
      "tempat": controllerTempat.text,
      "lama": controllerLama.text,
      "harga": controllerHarga.text,
      "tanggal": controllerTanggal.text
    });
  }

  @override
  void initState() {
     controllerNama = new TextEditingController(text: widget.list[widget.index]['nama'] ); 
    controllerTempat = new TextEditingController(text: widget.list[widget.index]['tempat'] );
    controllerHarga = new TextEditingController(text: widget.list[widget.index]['harga'] );
     controllerLama = new TextEditingController(text: widget.list[widget.index]['lama'] );
    controllerTanggal = new TextEditingController(text: widget.list[widget.index]['tanggal'] );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT DATA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      hintText: "nama", labelText: "nama"),
                ),


                new TextField(
                  controller: controllerTempat,
                  decoration: new InputDecoration(
                      hintText: "tempat", labelText: "tempat"),
                ),

                new TextField(
                  controller: controllerHarga,
                  decoration: new InputDecoration(
                      hintText: "harga", labelText: "Jenis Kamar"),
                ),
                new TextField(
                  controller: controllerLama,
                  decoration: new InputDecoration(
                      hintText: "lama", labelText: "lama tinggal"),
                ),

                new TextField(
                  controller: controllerTanggal,
                  decoration: new InputDecoration(
                      hintText: "tanggal", labelText: "yyyy-mm-dd"),
                ),

                //buat tombol untuk eksekusi

                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),

                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.blue,
                  onPressed: () {
                    editData();

                    //setelah add data kembali ke home

                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new AdminPage()
                      )
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
