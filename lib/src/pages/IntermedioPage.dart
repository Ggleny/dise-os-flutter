import 'package:flutter/material.dart';

class IntermedioPage extends StatelessWidget {
  const IntermedioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    // Stack Coloca los componentes las cosas encimadas
    // Los ultimos estan mas arriba, y los primeros mas abajo
    return Stack(
      children: [_widgetBackground(), _widgetImageBackground(), _textos()],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(100, 195, 220, 1.0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.blue,
              textStyle: TextStyle(color: Colors.white, fontSize: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
          child: Text(
            "Bienvenido",
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _widgetBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _widgetImageBackground() {
    return Container(
      child: Image(
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage('assets/img/scroll-1.png'),
      ),
    );
  }

  Widget _textos() {
    final style = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          Text("11°", style: style),
          Text("Miercoles", style: style),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
