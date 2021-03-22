import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  // This widget is the root of your application.

  final styleTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  final styleSubtitle = TextStyle(fontSize: 10.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _imagenFondo(),
              _tituloSubtituloRating(),
              _actions(),
              _crerTexto(),
              _crerTexto(),
              _crerTexto(),
              _crerTexto(),
              _crerTexto(),
              _crerTexto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _actions() {
    return Row(
      // Distribuye proporcionalmente los elementos, el spaceEvenly
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buttonAction(Icons.call, "Call"),
        _buttonAction(Icons.near_me, "Send"),
        _buttonAction(Icons.share, "Share"),
      ],
    );
  }

  Widget _buttonAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _tituloSubtituloRating() {
    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          // Main axis verticas
          children: [
            /** Primer children el q tiene Titulo, subtitulo y el rating */
            Expanded(
              child: Column(
                // Alinear estilos - Main Axis horizontal
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Montañas",
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Las montañas mas grande de la vida",
                    style: styleSubtitle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _imagenFondo() {
    // el DoInfinitive es para que tome el 100% la imagen
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/5e4169235cafe8bf44264d7a/winer.jpg'),
      ),
    );
  }

  Widget _crerTexto() {
    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Nisi sint reprehenderit irure sint ut mollit nisi quis tempor quis culpa. Duis proident cillum dolor irure aute pariatur commodo nulla sint est qui tempor in. Anim adipisicing pariatur enim mollit ea deserunt adipisicing aute magna.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
