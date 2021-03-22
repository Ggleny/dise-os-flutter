import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/pages/AvanzadoPage.dart';
import 'src/pages/IntermedioPage.dart';
import 'src/pages/BasicoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Saca la puta barra de arriba, q en android le pone medio como negro
    // Es una poronga, siempre agregar esta linea
    // Para q tu app se vea piolita
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: "Diseños",
      debugShowCheckedModeBanner: false,
      initialRoute: 'avanzado',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'intermedio': (BuildContext context) => IntermedioPage(),
        'avanzado': (BuildContext context) => AvanzadoPage(),
      },
      //home: BasicoPage(),
    );
  }
}
