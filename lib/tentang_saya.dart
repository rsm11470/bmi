import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Tentang Saya',
            style: TextStyle(
                color: Colors.yellow, fontSize: 35, fontFamily: "serif"),
          ),
          backgroundColor: Colors.brown[300],
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30),
            child: ClipOval(
              child: Image.network(
                'https://png.pngtree.com/png-clipart/20190904/original/pngtree-line-drawing-of-cat-illustration-png-image_4499630.jpg',
                height: 175,
                width: 175,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text('Putu Risma Widharini',
              style: TextStyle(fontSize: 30, color: Colors.brown[200])),
          Text('https://www.rismawdh.com',
              style: TextStyle(fontSize: 22, color: Colors.brown[200])),
          Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .98,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: const EdgeInsets.only(top: 32.0),
                  children: <Widget>[
                My(title: "Singaraja", icon: Icons.my_location),
                My(title: "Singaraja", icon: Icons.home),
                My(title: "All Genre", icon: Icons.music_note),
                My(title: "Undiksha", icon: Icons.location_city)
              ]))
        ]));
  }
}

class My extends StatelessWidget {
  const My({this.title, this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            padding: EdgeInsets.all(37),
            decoration: BoxDecoration(
                color: Colors.brown[100],
                borderRadius: BorderRadius.circular(35)),
            child: Column(
              children: <Widget>[
                Spacer(),
                Icon(
                  icon,
                  size: 95,
                ),
                Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                )
              ],
            )));
  }
}
