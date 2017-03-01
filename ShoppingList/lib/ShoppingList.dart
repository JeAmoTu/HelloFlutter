import 'package:flutter/material.dart';
import 'package:ShoppingList/Product.dart';
import 'package:ShoppingList/ShoppingListItem.dart';

class ShoppingList extends StatefulWidget {
  // key不清楚干嘛的
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  // The framework calls createState the first time a widget appears at a given
  // location in the tree. If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework will re-use the State object
  // instead of creating a new State object.

  // 创建一个状态
  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  // product集合来存储对象
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      // When user changes what is in the cart, we need to change _shoppingCart
      // inside a setState call to trigger a rebuild. The framework then calls
      // build, below, which updates the visual appearance of the app.

      // 当点击list里的item时 会触发这段代码 然后重建 更新显示
      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        //map 取出
        children: config.products.map((Product product) {
          return new ShoppingListItem(
            product: product,
            // 判断对象是否在集合中
            inCart: _shoppingCart.contains(product),
            //点击事件
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}
