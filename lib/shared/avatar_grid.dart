import 'package:flutter/material.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:skinly/widgets/avatar_widget.dart';

List<Widget> getFormatedAvatars(avatars, route, haveBlank) {
  List<Widget> result = [];
  
  if (haveBlank) {
    result.add(AvatarWidget(
      child: Center(child: Text('Em branco', style: TextStyle(fontSize: 24))),
      route: '/avatar-informations',
    ));
  }

  for (AvatarModel avatar in avatars) {
    result.add(AvatarWidget(
      child: Image.network(avatar.url),
      route: route,
      avatar: avatar,
    ));
  }

  return result;
}

Widget createAvatarGrid(avatars, route, { haveBlank = false }) {
  return GridView.count(
    crossAxisCount: 2,
    padding: EdgeInsets.all(15),
    children: getFormatedAvatars(avatars, route, haveBlank),
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
                TextSpan(text: ' no topo da tela para adicionar um novo personagem'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
