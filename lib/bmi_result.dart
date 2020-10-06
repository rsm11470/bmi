import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.namaLengkap,
      @required this.tgl,
      @required this.bulan,
      @required this.tahunLahir,
      @required this.jk,
      @required this.tinggiBadan,
      @required this.beratBadan});
  final int tinggiBadan;
  final int beratBadan;
  final String namaLengkap;
  final int tahunLahir;
  final String jk;
  final int tgl;
  final String bulan;

  @override
  Widget build(BuildContext context) {
    double bmi = beratBadan / pow(tinggiBadan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Nama : $namaLengkap",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            Text(
              "Umur : ${2020 - tahunLahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            Text(
              "Jenis Kelamin : $jk ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.brown,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
