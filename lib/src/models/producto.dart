class Producto {
  String? nombre;
  int? precio;
  int? cantidad;
  List<String> categorias;

  Producto({
    this.nombre,
    this.precio,
    this.cantidad,
    this.categorias = const [],
  });
}
