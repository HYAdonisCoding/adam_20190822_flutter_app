import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Navigation transport params',
    home: ProductList(
      products:List.generate(20, (i) => Product('Shopping Centre: Goods $i', 'Shopping Centre: This is a goods Detial, number: $i'))),
    ),
  );
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goods List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProductDetail(product: products[index]),
                ));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}'),),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}