import 'package:proyectoaplicacionventas/Modelo/Categoria.dart';
import 'package:hive/hive.dart';

class CategoriasController {
  List<Categoria> obtenerCategorias() {
    var box = Hive.box('categorias');
    List<Categoria> categorias = [];
    for (var i = 0; i < box.length; i++) {
      var categoria = Categoria();
      categoria.nombre = box.getAt(i);
      categorias.add(categoria);
    }
    return categorias;
  }

  void eliminarCategoria(int index) {
    var box = Hive.box('categorias');
    box.deleteAt(index);
  }
}
