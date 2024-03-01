import 'package:proyectoaplicacionventas/Modelo/Producto.dart';
import 'package:hive/hive.dart';

class VerProductosController {
  List<Producto> obtenerProductos() {
    var productos = Hive.box('productos');
    List<Producto> listaProductos = [];

    for (var producto in productos.values) {
      listaProductos.add(Producto(
        codigo: producto['codigo'],
        nombre: producto['nombre'],
        cantidad: producto['cantidad'],
        //cantidad: int.fromEnvironment(producto['cantidad']),
        categoria: producto['categoria'],
        precio: producto['precio'],
        //precio: double.parse(producto['precio']),
      ));
    }
    return listaProductos;
  }
}
