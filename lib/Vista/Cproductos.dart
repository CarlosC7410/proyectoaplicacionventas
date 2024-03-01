import 'package:proyectoaplicacionventas/Controlador/LProductos.dart';
import 'package:flutter/material.dart';

class VerProductosVista extends StatelessWidget {
  final VerProductosController controller = VerProductosController();
  VerProductosVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver Productos'),
      ),
      body: Center(
        child: ListView(
          children: controller.obtenerProductos().map((producto) {
            return ListTile(
              leading: Text(producto.codigo),
              title: Text(producto.nombre),
              subtitle: Text(producto.precio.toString()),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          }).toList(),
        ),
      ),
    );
  }
}