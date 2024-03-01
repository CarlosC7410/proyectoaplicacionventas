import 'package:proyectoaplicacionventas/Controlador/ACategorias.dart';
import 'package:proyectoaplicacionventas/Modelo/Categoria.dart';
import 'package:flutter/material.dart';

class AgregarCategoriaVista extends StatelessWidget {
  final List<Categoria> categorias;
  final AgregarCategoriaController controller = AgregarCategoriaController();
  final TextEditingController codigoController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController descripcionController = TextEditingController();
  AgregarCategoriaVista({super.key, required this.categorias});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Categoria'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Codigo'),
            TextField(
              controller: codigoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Nombre'),
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Descripcion'),
            TextField(
              controller: descripcionController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String codigo = codigoController.text;
                  String nombre = nombreController.text;
                  String descripcion = descripcionController.text;
                  controller.agregarCategoria(codigo, nombre, descripcion);
                },
                child: const Text('Guardar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
