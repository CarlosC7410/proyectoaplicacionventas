class Producto {
  String codigo;
  String nombre;
  int cantidad;
  String categoria;
  double precio;

  Producto({
    required this.codigo,
    required this.nombre,
    required this.cantidad,
    required this.precio,
    required this.categoria,
  });

  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'nombre': nombre,
      'cantidad': cantidad,
      'precio': precio,
      'categoria': categoria,
    };
  }
}