import 'package:flutter/material.dart';
import '../screens/product_detail.dart';
class SingleProduct extends StatelessWidget {
  // final AssetImage carImage;
  // SingleProduct(this.carImage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.of(context).pushNamed(ProductDetailScreen.routeName);},
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          child: Stack(
            children: <Widget>[
              Container(
                height: 350,
                child: Image.asset('assets/images/car.jpg', fit: BoxFit.cover,),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GridTileBar(
                  backgroundColor: Colors.black26,
                  leading: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                    onPressed: () {},
                  ),
                  title: Text(
                    "Car",
                    textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
