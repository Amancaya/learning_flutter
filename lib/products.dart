import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index){
    return Card(
            child:
              Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(products[index])
                ],
              )
    );
  }

  Widget _buildProductList(){
    Widget productCard;
    if( products.length > 0){
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }else {
      productCard = Center(child: Text("No hay productos"),);
      //si no se quiere mostrar nada cuando la lista este vacia se puede retornar un contenedor vacio
      //para no retornar un null
//      productCard = Container();
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    //para que el codigo sea mas entendible
    return _buildProductList();
  }
}
