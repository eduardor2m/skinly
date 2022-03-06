import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<String> members = [
    'Eduardo Roger',
    'Elias José',
    'Filipe Alves',
    'Gabriel de Almeida',
    'Lucas Emanuel',
    'Maria Nathálya',
    'Maria Thayse',
    'Pedro Carlos'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre nós', style: TextStyle(color: Color(0xff000000))),
        backgroundColor: Color(0xffffffff),
        foregroundColor: Color(0xff000000),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle('Onde estamos:'),
              SizedBox(height: 10),
              buildMap(context),
              SizedBox(height: 30),
              buildTitle('Quem somos:'),
              SizedBox(height: 10),
              ...buildMembersList(members),
              SizedBox(height: 30),
              buildTitle('Nosso repositório de código:'),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.code_outlined, color: Color(0xff0077B6)),
                  SizedBox(width: 10),
                  buildText('github.com/eduardor2m/skinly'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildMap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: FlutterMap(
        options: MapOptions(center: LatLng(-9.745473, -36.631517), zoom: 15),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            attributionBuilder: (_) => Text('IFAL - Arapiraca'),
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 60,
                height: 60,
                point: LatLng(-9.745473, -36.631517),
                builder: (ctx) => Icon(Icons.place, size: 48, color: Color(0xff0077B6)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    );
  }

  Text buildText(String title) => Text(title, style: TextStyle(fontSize: 18));

  List<Widget> buildMembersList(List<String> members) {
    List<Widget> membersList = [];

    members.forEach((member) {
      membersList.add(buildText('- $member'));
      membersList.add(SizedBox(height: 5));
    });

    return membersList;
  }
}