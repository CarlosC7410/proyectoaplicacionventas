import 'package:flutter/material.dart';
import 'package:proyectoaplicacionventas/Vista/Menu.dart';

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: inicio(context),
    );
  }
}

Widget inicio(BuildContext context)
{
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoContrasena(),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              botonEntrar(context), // Aquí pasamos el contexto
              SizedBox(width: 10),
              botonCrear(),
            ],
          ),
        ],
      )
    ),
  );
}

Widget nombre()
{
  return Text("Sing in", style: TextStyle(color: Colors.blue, fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar(BuildContext context){
  return Container(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            onPrimary: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuVista()),
          );
        },
        child: Text("Entrar")
    ),
  );
}

Widget botonCrear(){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
      onPressed: () {},
      child: Text("Crear"),
  );
}
