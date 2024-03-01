import 'package:proyectoaplicacionventas/Modelo/Categoria.dart';
import 'package:proyectoaplicacionventas/Modelo/Producto.dart';
import 'package:proyectoaplicacionventas/Vista/Categorias.dart';
import 'package:proyectoaplicacionventas/Vista/Productos.dart';
import 'package:proyectoaplicacionventas/Vista/Cproductos.dart';
import 'package:proyectoaplicacionventas/Vista/Ccategorias.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MenuVista extends StatelessWidget {
  MenuVista({Key? key}) : super(key: key);

  final List<Producto> productos = [];
  final List<Categoria> categorias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menú'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AgregarProductoVista(
                        productos: productos,
                      ),
                    ),
                  );
                },
                child: const Text('Agregar Producto'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerProductosVista(),
                    ),
                  );
                },
                child: const Text('Ver Productos'),
              ),
              ElevatedButton(
                onPressed: () {
                  var box = Hive.box('productos');

                  print(box.toMap());
                },
                child: const Text('Test Hive'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AgregarCategoriaVista(categorias: []);
                      },
                    ),
                  );
                },
                child: const Text('Crear Categoria'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return VerCategoriasVista();
                      },
                    ),
                  );
                },
                child: const Text('Categorias'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // var box = Hive.box('testBox');

            // box.put('name', 'David3');

            // var name = box.get('name');

            // print('Name: $name');
          },
          child: const Icon(Icons.add),
        ));
  }
}