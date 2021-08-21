import 'package:flutter/material.dart';

class CaracteristicaScreen extends StatefulWidget {
  const CaracteristicaScreen({Key? key}) : super(key: key);

  @override
  _CaracteristicaScreenState createState() => _CaracteristicaScreenState();
}

class _CaracteristicaScreenState extends State<CaracteristicaScreen> {
    return result;
  }

  Widget createAvatarGrid(avatars) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(15),
      children: getFormatedAvatars(avatars),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(          
          // Barra superior do app
          appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
            titleSpacing: 0,
            // Titulo da barra superior (Informações)
            title: Text( 
              'Informações',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
            // Botão para voltar para home
            bottom: (
              labelPadding: EdgeInsets.symmetric(vertical: 7),
              labelColor: Color(0xff0077B6),
              labelStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.arrow_back_outlined,
              color: Color(0xff000000),
            ),
          ),
          // Botões de caracteristicas
          ButtonColumn(
            alignment: MainAxisAlignment.SpacingEvenly,
            children: <Widget>[
              children: Column(
                // Botões de Gênero
                child const Text('Gênero:'),
                children: Row(
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Masculino'),
                  ),
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Feminino'),
                  ),
                ),
                // Botões de Idade
                child const Text('Idade:'),
                children: Row(
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Bebê'),
                  ),
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Criança'),
                  ),
                ),
                children: Row(
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Jovem'),
                  ),
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Adulto'),
                  ),
                ),
                children: Row(
                  OutlineButton(
                    onPressed: _showToast,
                    child: const Text('Idoso'),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Navigation to "/new" route
              },

              // Botão de Avançar
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AVANÇAR'),
                      SizedBox(width: 10),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
