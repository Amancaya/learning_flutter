import 'package:flutter/material.dart';
import './products.dart';
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
  Widget build(BuildContext context) {
    return Column ( children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _products.add("New food tester");
          });
        },
        child: Text("Add product"),
      ),
    ),
    Products(_products)
    ],);
  }

}