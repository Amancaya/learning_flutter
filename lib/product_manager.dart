import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingData;

  ProductManager(this.startingData);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }

}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    //para usar las variables del padre
    _products.add(widget.startingData);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column ( children: [Container(
      margin: EdgeInsets.all(10.0),
      child: ProductControl(this._addProducts),
    ),
    Expanded(child: Products(_products),)
    ],);
  }

}