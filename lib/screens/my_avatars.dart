import 'package:flutter/material.dart';
import 'package:skinly/shared/avatar_grid.dart';

class MyAvatarsScreen extends StatefulWidget {
  const MyAvatarsScreen({Key? key}) : super(key: key);

  @override
  _MyAvatarsScreenState createState() => _MyAvatarsScreenState();
}

class _MyAvatarsScreenState extends State<MyAvatarsScreen> {
  List savedAvatars = [
    'avatar-1.png',
    'avatar-2.png',
    'avatar-3.png',
    'avatar-4.png',
  ];
  List unsavedAvatars = ['avatar-5.png'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
            titleSpacing: 0,
            title: Text(
              'Meus Personagens',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(vertical: 7),
              labelColor: Color(0xff0077B6),
              labelStyle: TextStyle(fontWeight: FontWeight.w500),
              tabs: [
                Text('Salvos'),
                Text('Rascunhos'),
              ],
            ),
            leading: Icon(
              Icons.groups,
              color: Color(0xff000000),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose-model');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.add_rounded, color: Color(0xff0077B6)),
                      Text(
                        'Novo',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0077B6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              savedAvatars.length > 0
                  ? createAvatarGrid(savedAvatars, '/export')
                  : showInstructionMessage('personagens salvos'),
              unsavedAvatars.length > 0
                  ? createAvatarGrid(unsavedAvatars, '/export')
                  : showInstructionMessage('rascunhos'),
            ],
          ),
        ),
      ),
    );
  }
}
