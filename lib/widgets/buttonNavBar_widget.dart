import 'package:flutter/material.dart';

class ButtonNavBarWidget extends StatefulWidget {
  @override
  _ButtonNavBarWidgetState createState() => _ButtonNavBarWidgetState();
}

class _ButtonNavBarWidgetState extends State<ButtonNavBarWidget> {
  int _currentTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.group), label: 'Meus Personagens'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Novo'),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), label: 'Redes Sociais'),
        ],
        onTap: (index) {
          setState(() {
            _currentTabIndex = index;
          });
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/my-avatars');
          }
          if (index == 1) {
            Navigator.pushReplacementNamed(context, '//build-avatar');
          } else {
            Navigator.pushReplacementNamed(context, '/welcome');
          }
        },
      ),
    );
  }
}
