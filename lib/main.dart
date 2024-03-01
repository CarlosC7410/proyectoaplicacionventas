import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:proyectoaplicacionventas/Vista/Sesion.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('categorias');
  await Hive.openBox('productos');
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
