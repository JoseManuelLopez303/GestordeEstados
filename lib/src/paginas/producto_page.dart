import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventario/src/controllers/producto_controller.dart';
import 'package:inventario/src/models/producto.dart';

import 'mod_producto_date.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productoCtrl = Get.put(ProductoController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),
      ),
      body: Obx(() => productoCtrl.existeProducto.value
          ? InformacionProducto(
              producto: productoCtrl.producto.value,
            )
          : NoProducto()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_outlined),
        onPressed: () {
          Get.to(ModProductoPage());
        },
      ),
    );
  }
}

class NoProducto extends StatelessWidget {
  const NoProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('No existe producto'),
    );
  }
}

class InformacionProducto extends StatelessWidget {
  final Producto producto;
  const InformacionProducto({Key? key, required this.producto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Text('General'),
          Divider(),
          ListTile(
            title: Text('Nombre del producto: ${this.producto.nombre}'),
          ),
          ListTile(
            title: Text('Precio del producto ${this.producto.precio}'),
          ),
          ListTile(
            title: Text('Cantidad del producto ${this.producto.cantidad}'),
          ),
          Divider(),
          //... Sprep
          ...producto.categorias.map(
            (e) => ListTile(
              title: Text(e),
            ),
          )
        ],
      ),
    );
  }
}
