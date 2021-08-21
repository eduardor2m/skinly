import 'package:flutter/material.dart';

class ModelsScreen extends StatefulWidget {
  const ModelsScreen({Key? key}) : super(key: key);

  @override
  _ModelsScreenState createState() => _ModelsScreenState();
}

class _ModelsScreenState extends State<ModelsScreen> {
  List ModelsAvatars = [
    'img.png',
    'avatar-1.png',
    'avatar-3.png',
    'avatar-4.png',
  ];

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
                text: 'Clique em: ',
                children: [
                  TextSpan(
                    text: 'Em branco',
                    style: TextStyle(
                      color: Color(0xff0077B6),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                      text:
                      ' para criar um novo modelo'),
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
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back_outlined, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
            backgroundColor: Color(0xffffffff),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
            titleSpacing: 0,
            title: Text(
              'Modelos',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),

        ),
          body: (
              ModelsAvatars.length > 0
                ? createAvatarGrid(ModelsAvatars)
                    : showInstructionMessage('Modelos')
          ),
        ),
      ),
    );
  }
}