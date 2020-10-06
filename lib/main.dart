import 'package:flutter/material.dart';
import 'bmi_main.dart';
import 'tentang_saya.dart';

void main() =>
    runApp(MaterialApp(home: InputBMI(), routes: <String, WidgetBuilder>{
      '/ttg': (BuildContext context) => MyProfil(),
    }));
