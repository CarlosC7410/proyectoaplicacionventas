class Categoria {
  String codigo;
  String nombre;
  String descripcion;

  Categoria({
    required this.codigo,
    required this.nombre,
    required this.descripcion,
  });

  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'nombre': nombre,
      'ddescripcion': descripcion,
    };
  }
}
