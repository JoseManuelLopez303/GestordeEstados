import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventario/src/controllers/producto_controller.dart';
import 'package:inventario/src/models/producto.dart';

class ModProductoPage extends StatelessWidget {
  const ModProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productoCtrl = Get.find<ProductoController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Modificar Producto'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Agregar Producto'),
              onPressed: () {
                productoCtrl.cargarProducto(
                    Producto(nombre: 'Telefono', precio: 1500, cantidad: 5));
              },
            ),
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Modificar Precio'),
              onPressed: () {
                productoCtrl.cambiarPrecio(800);
              },
            ),
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Modificar Cantidad'),
              onPressed: () {
                productoCtrl.cambiarCantidad(500);
              },
            ),
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Agregar Categoria'),
              onPressed: () {
                productoCtrl.agregarCategoria(
                    'Categoria #${productoCtrl.producto.value.categorias.length}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
