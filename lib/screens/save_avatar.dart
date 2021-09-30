import 'package:flutter/material.dart';
import 'package:skinly/widgets/input_widget.dart';
import 'package:skinly/widgets/primary_button_widget.dart';

class SaveAvatarScreen extends StatefulWidget {
  const SaveAvatarScreen({ Key? key }) : super(key: key);

  @override
  _SaveAvatarScreenState createState() => _SaveAvatarScreenState();
}

class _SaveAvatarScreenState extends State<SaveAvatarScreen> {
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
          'Salvar',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('assets/avatar-1.png')],
                ),
                SizedBox(height: 30),
                InputWidget(label: 'Nome do personagem'),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(child: Container(
                        decoration: BoxDecoration(color: Color.fromRGBO(37, 120, 221, 0.1)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download_done_outlined, color: Color(0xff2578dd)),
                                SizedBox(width: 3),
                              Text('Feminino', style: TextStyle(color: Color(0xff2578dd))),
                            ]
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Container(
                        decoration: BoxDecoration(color: Color.fromRGBO(37, 120, 221, 0.1)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download_done_outlined, color: Color(0xff2578dd)),
                                SizedBox(width: 3),
                              Text('Adulto', style: TextStyle(color: Color(0xff2578dd))),
                            ]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text('00/00/0000'),
                SizedBox(height: 10),
                Text('0:00 PM'),
                SizedBox(height: 35),
                PrimaryButtonWidget(text: 'SALVAR', action: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}