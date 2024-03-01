import 'package:proyectoaplicacionventas/Modelo/Categoria.dart';
import 'package:hive/hive.dart';

class VerCategoriasController {
  List<Categoria> obtenerCategorias() {
    var categorias = Hive.box('categorias');
    List<Categoria> listaCategorias = [];

    for (var categoria in categorias.values) {
      listaCategorias.add(Categoria(
        codigo: categoria['codigo'],
        nombre: categoria['nombre'],
        descripcion: categoria['descripcion'],
      ));
    }
    return listaCategorias;
  }
}
