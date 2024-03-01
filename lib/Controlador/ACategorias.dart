import 'package:hive/hive.dart';

class AgregarCategoriaController {
  void agregarCategoria(
    String codigo,
    String nombre,
    String descripcion,
  ) async {
    bool isValid = true;

    if (isValid) {
      try {
        var categoriasBox = await Hive.openBox('categorias'); // Abre la caja categorias
        var categoriaExistente = categoriasBox.get(codigo);
        if (categoriaExistente != null) {
          // Si ya existe una categoría con el mismo código, muestra un diálogo
          // Aquí debes agregar el código para mostrar un diálogo indicando que la categoría ya existe
          print('La categoría ya existe');

        } else {
          // Si no existe, agrega la categoría a la caja
          categoriasBox.put(codigo, {'codigo': codigo, 'nombre': nombre, 'descripcion': descripcion});
        }
      } catch (e) {
        // Manejar cualquier error que pueda ocurrir al abrir o acceder a la caja
        print('Error al acceder a la caja de categorías: $e');
      }
    }
  }
}