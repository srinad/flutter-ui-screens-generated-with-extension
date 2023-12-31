
import 'package:flutter/material.dart';
import 'components/product_screen_body.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductScreen'),
      ),
      body: ProductScreenBody(),
    );
  }
}
    