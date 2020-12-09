import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Car details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: mediaQuery.height * 0.4,
            width: mediaQuery.width,
            child: Image.asset('assets/images/car.jpg', fit: BoxFit.cover,),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Car Name',
                      style: TextStyle(fontSize: 24),
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite_border), onPressed: () {})
                  ],
                ),
                PropertyBox('ModelNo', 'XIV'),
                PropertyBox('Color', 'grey'),
                PropertyBox('Conditon', 'very good'),
                PropertyBox('Price', '\$ 60,00,000'),
              ],
            ),
          ),
          PurchaseButton()
        ],
      ),
    );
  }
}

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 12, 10, 16),
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: FlatButton(
        splashColor: Colors.purpleAccent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('item was added to cart successfully!'),
              duration: Duration(seconds: 3),
            ),
          );
        },
        child: Text(
          'PURCHASE',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class PropertyBox extends StatelessWidget {
  final String property;
  final String value;
  PropertyBox(this.property, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        property,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Text(value, style: TextStyle(fontSize: 18)),
    ]);
  }
}
