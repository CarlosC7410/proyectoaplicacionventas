import 'package:flutter/material.dart';
import 'package:proyectoaplicacionventas/Vista/Sesion.dart';

void main() {
  runApp(const MyApp());
}

class MiApp extends StatelessWidget {
  const MiApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi App",
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
