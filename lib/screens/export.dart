import 'package:flutter/material.dart';

class ExportScreen extends StatefulWidget {
  @override
  _ExportScreenState createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        titleSpacing: 0,
        title: Text(
          'Exportar Personagem',
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
      ),
      body: Center(
          child: Column(children: [
        SizedBox(height: 50),
        Container(
          width: 200,
          height: 200,
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(100.0),
                topRight: const Radius.circular(100.0),
                bottomLeft: const Radius.circular(100.0),
                bottomRight: const Radius.circular(100.0),
              )),
        ),
        SizedBox(height: 10),
        Text('Nome do personagem', style: TextStyle(fontSize: 20)),
        SizedBox(height: 50),
        Container(
            width: 300,
            height: 50,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('export');
                },
                child: Text('JPEG'))),
        SizedBox(height: 20),
        Container(
            width: 300,
            height: 50,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('export');
                },
                child: Text('PNG'))),
        SizedBox(height: 20),
        Container(
            width: 300,
            height: 50,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('export');
                },
                child: Text('SVG', style: TextStyle(color: Colors.blue)))),
        SizedBox(height: 20),
        Container(
            width: 300,
            height: 50,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  print('export');
                },
                child: Text('Compartilhar',
                    style: TextStyle(color: Colors.white)))),
      ])),
    );
  }
}
