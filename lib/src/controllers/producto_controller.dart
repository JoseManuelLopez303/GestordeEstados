import 'package:get/get.dart';
import 'package:inventario/src/models/producto.dart';

class ProductoController extends GetxController {
  //Observables le dice al widget cuando se redibuje
  var existeProducto = false.obs;
  //var producto = new Producto().obs;
  var producto = Producto().obs;

  void cargarProducto(Producto pProducto) {
    //Cargamos el producto
    this.producto.value = pProducto;
    //Cambiamos el valor de la propiedad
    this.existeProducto.value = true;
  }

  void cambiarPrecio(int pPrecio) {
    this.producto.update((val) {
      val!.precio = pPrecio;
    });
  }

  void agregarCategoria(String pCategoria) {
    this.producto.update((val) {
      val!.categorias = [...val.categorias, pCategoria];
    });
  }

  void cambiarCantidad(int pCantidad) {
    this.producto.update((val1) {
      val1!.cantidad = pCantidad;
    });
  }
}
