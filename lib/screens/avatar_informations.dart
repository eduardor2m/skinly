import 'package:flutter/material.dart';
import 'package:skinly/widgets/list_button_widget.dart';
import 'package:skinly/widgets/primary_button_widget.dart';

class AvatarInformationsScreen extends StatefulWidget {
  const AvatarInformationsScreen({Key? key}) : super(key: key);

  @override
  _AvatarInformationsScreenState createState() => _AvatarInformationsScreenState();
}

class _AvatarInformationsScreenState extends State<AvatarInformationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        titleSpacing: 0,
        title: Text(
          'Informações do Personagem',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gênero:', style: TextStyle(fontSize: 18)),
            Row(
              children: [
                ListButtonWidget(text: 'Masculino'),
                SizedBox(width: 10),
                ListButtonWidget(text: 'Feminino'),
              ],
            ),
            SizedBox(height: 25),
            Text('Idade:', style: TextStyle(fontSize: 18)),
            Row(
              children: [
                ListButtonWidget(text: 'Bebê'),
                SizedBox(width: 10),
                ListButtonWidget(text: 'Criança'),
              ],
            ),
            Row(
              children: [
                ListButtonWidget(text: 'Jovem'),
                SizedBox(width: 10),
                ListButtonWidget(text: 'Adulto'),
              ],
            ),
            Row(
              children: [
                ListButtonWidget(text: 'Idoso'),
                SizedBox(width: 10),
                Expanded(child: Container()),
              ],
            ),
            Expanded(child: Container()),
            PrimaryButtonWidget(
              action: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/build-avatar',
                );
              },
              text: 'AVANÇAR',
              icon: Icon(Icons.chevron_right_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
