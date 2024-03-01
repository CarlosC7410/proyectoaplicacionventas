import 'package:hive/hive.dart';

class AgregarProductoController {
  void agregarProducto(
    String codigo,
    String nombre,
    int cantidad,
    String categoria,
    double precio,
  )
  {
    bool isValid = true;
    //1.-validar primero mis datos de entrada
    //checar que no este vacio
    //checar que corresponda al tipo de dato que espero

    //2.- Agregar producto a la base de datos
    //si y solo si la información es valida

    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(codigo, {'codigo': codigo, 'nombre': nombre, 'cantidad': cantidad, 'categoria': categoria, 'precio': precio,});
    }
  }
}