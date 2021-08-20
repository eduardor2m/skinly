import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List savedAvatars = [
    'avatar-1.png',
    'avatar-2.png',
    'avatar-3.png',
    'avatar-4.png',
  ];
  List unsavedAvatars = ['avatar-5.png'];

  List<Widget> getFormatedAvatars(avatars) {
    List<Widget> result = [];
    int counter = 0;

    while (counter < avatars.length) {
      result.add(
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              // Navigation to info page
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffAEAEAE),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Image.asset(avatars[counter]),
            ),
          ),
        ),
      );
      counter++;
    }

    return result;
  }

  Widget createAvatarGrid(avatars) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(15),
      children: getFormatedAvatars(avatars),
    );
  }

  Widget showInstructionMessage(textTab) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Você não tem $textTab',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: 'Toque em ',
                children: [
                  TextSpan(
                    text: '+ Novo',
                    style: TextStyle(
                      color: Color(0xff0077B6),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                      text:
                          ' no topo da tela para adicionar um novo personagem'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                  // Navigation to "/new" route
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
                  ? createAvatarGrid(savedAvatars)
                  : showInstructionMessage('personagens salvos'),
              unsavedAvatars.length > 0
                  ? createAvatarGrid(unsavedAvatars)
                  : showInstructionMessage('rascunhos'),
            ],
          ),
        ),
      ),
    );
  }
}
