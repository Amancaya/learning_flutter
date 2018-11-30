import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProducts;

  ProductControl(this.addProducts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        addProducts('Prueba');
      },
      child: Text("Add product"),
    );
  }

}