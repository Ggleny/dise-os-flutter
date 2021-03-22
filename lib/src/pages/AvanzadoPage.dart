import 'dart:ui';

import 'package:flutter/material.dart';

class AvanzadoPage extends StatelessWidget {
  const AvanzadoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _imageFondo(),
          _cajaRosa(),
          //
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _grillaDeBotones(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _grillaDeBotones() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _tarjeta(Colors.pinkAccent, Icons.border_all, "General"),
            _tarjeta(Colors.blueAccent, Icons.calendar_today, "LALA"),
          ],
        ),
        TableRow(
          children: [
            _tarjeta(
                Colors.purpleAccent, Icons.accessible_forward_sharp, "General"),
            _tarjeta(Colors.greenAccent, Icons.art_track_sharp, "General"),
          ],
        ),
        TableRow(
          children: [
            _tarjeta(Colors.orangeAccent, Icons.pie_chart, "General"),
            _tarjeta(Colors.cyan, Icons.traffic_sharp, "Cosito"),
          ],
        ),
        TableRow(
          children: [
            _tarjeta(Colors.pinkAccent, Icons.border_all, "General"),
            _tarjeta(Colors.pinkAccent, Icons.border_all, "General"),
          ],
        ),
      ],
    );
  }

  Widget _tarjeta(Color color, IconData icono, String texto) {
    final style = TextStyle(color: color);
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 35,
                    child: Icon(
                      icono,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(texto, style: style),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _titulos() {
    final style = TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white);
    final styleSubtitle = TextStyle(fontSize: 16, color: Colors.white);
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Widget Mas piola",
            style: style,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Esta es descripcion del widget dificil",
            style: styleSubtitle,
          ),
        ],
      ),
    ));
  }

  Widget _imageFondo() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Coordenadas del screen para el gradiente
          // Funciona 00 00
          //          01 11
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 0.8),
            Color.fromRGBO(35, 37, 57, 0.9)
          ],
          //tileMode: TileMode.clamp,
        ),
      ),
    );

    return Container(
      child: gradient,
    );
  }

  Widget _cajaRosa() {
    return Positioned(
      top: -100,
      child: Transform.rotate(
        angle: -3.14 / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]),
          ),
        ),
      ),
    );
  }

  /** O lo hacemos como un Thema General del la app
   *  o lo hago asi, solo para este caso */
  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // Color del fondo de la app - backgroundColor
          // Esto esta deprecado
          // Se cambia por
          /**
           *  backgroundColor: Color.fromRGBO(55, 57, 84, 1),
              selectedItemColor: Colors.pinkAccent,
              unselectedItemColor: Color.fromRGBO(120, 117, 152, 1),
           */
          /*
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        disabledColor: Colors.red,
        indicatorColor: Colors.red,
        //secondaryHeaderColor: Colors.red,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(120, 117, 152, 1),
              ),
            ),
          */
          ),
      child: BottomNavigationBar(
        // No sirven para una verga
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        // Este hace q no se vea el label
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(120, 117, 152, 1),
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "",
          ),
        ],
      ),
    );
  }
}
