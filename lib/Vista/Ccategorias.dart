import 'package:proyectoaplicacionventas/Controlador/LCategorias.dart';
import 'package:flutter/material.dart';

class VerCategoriasVista extends StatelessWidget {
  final VerCategoriasController controller = VerCategoriasController();
  VerCategoriasVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver Categorias'),
      ),
      body: Center(
        child: ListView(
          children: controller.obtenerCategorias().map((categorias) {
            return ListTile(
              leading: Text(categorias.codigo),
              title: Text(categorias.nombre),
              subtitle: Text(categorias.descripcion.toString()),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          }).toList(),
        ),
      ),
    );
  }
}