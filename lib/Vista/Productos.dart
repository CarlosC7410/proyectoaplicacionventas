import 'package:proyectoaplicacionventas/Controlador/AProductos.dart';
import 'package:proyectoaplicacionventas/Modelo/Producto.dart';
import 'package:proyectoaplicacionventas/Controlador/LCategorias.dart';
import 'package:proyectoaplicacionventas/Modelo/Categoria.dart';
import 'package:flutter/material.dart';

class AgregarProductoVista extends StatelessWidget {
  final List<Producto> productos;
  final AgregarProductoController controller = AgregarProductoController();
  final TextEditingController codigoController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  final CategoriasController  categoriasController = CategoriasController (); // Controlador de categorías
  AgregarProductoVista({Key? key, required this.productos}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Producto'),
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
            const Text('Cantidad'),
            TextField(
              controller: cantidadController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Categoria'),
            FutureBuilder<List<Categoria>>(
              future: Future<List<Categoria>>(() => categoriasController.obtenerCategorias()), // Envuelve la llamada en un Future
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return DropdownButtonFormField<Categoria>(
                    items: snapshot.data!.map((categoria) {
                      return DropdownMenuItem<Categoria>(
                        value: categoria,
                        child: Text(categoria.nombre),
                      );
                    }).toList(),
                    onChanged: (Categoria? categoriaSeleccionada) {
                      // Aquí puedes manejar la selección de la categoría
                    },
                  );
                } else if (snapshot.hasError) {
                  // Manejar error
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtienen las categorías
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Precio'),
            TextField(
              controller: precioController,
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
                  int cantidad = int.tryParse(cantidadController.text) ?? 0; // Utiliza tryParse para evitar errores
                  String categoria = ''; // Aquí debes obtener la categoría seleccionada del DropdownButtonFormField
                  double precio = double.tryParse(precioController.text) ?? 0.0; // Utiliza tryParse para evitar errores
                  controller.agregarProducto(codigo, nombre, cantidad, categoria, precio);
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
