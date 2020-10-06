import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int thn = 0;
  int tgl = 0;

  String _jk = "";

  void _pilih(String value) {
    setState(() {
      _jk = value;
    });
  }

  var _namalengkap = TextEditingController();
  var _bulan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('APLIKASI BMI'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/ttg');
            },
          )
        ],
        backgroundColor: Colors.brown[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Container(
              child: TextField(
                controller: _namalengkap,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Container(
              child: TextField(
                onChanged: (txt) {
                  setState(() {
                    tgl = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(labelText: 'Tanggal Lahir'),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Container(
              child: TextField(
                controller: _bulan,
                decoration: InputDecoration(labelText: 'Bulan'),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Container(
              child: TextField(
                onChanged: (txt) {
                  setState(() {
                    thn = int.parse(txt);
                  });
                },
                keyboardType: TextInputType.number,
                maxLength: 4,
                decoration: InputDecoration(labelText: "Tahun"),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            RadioListTile(
              value: "Perempuan",
              groupValue: _jk,
              title: Text("Perempuan"),
              onChanged: (String value) {
                _pilih(value);
              },
            ),
            RadioListTile(
              value: "Laki-laki",
              groupValue: _jk,
              title: Text("Laki-laki"),
              onChanged: (String value) {
                _pilih(value);
              },
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResult(
                            namaLengkap: _namalengkap.text,
                            tgl: tgl,
                            bulan: _bulan.text,
                            tinggiBadan: tinggi,
                            beratBadan: berat,
                            tahunLahir: thn,
                            jk: _jk),
                      ));
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.brown,
                child: Text(
                  'HITUNG BMI',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
