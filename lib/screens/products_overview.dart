import 'package:demo1/screens/auth_1.dart';
import 'package:flutter/material.dart';
import '../widgets/product.dart';
import '../profile.dart';

class AllProducts extends StatefulWidget {
  static const routeName = '/all-products-screen';
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sec2Hand'),
        elevation: 10,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 45,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
              child: Text('My Profile'),
            ),
            Divider(),
            ListTile(
              title: Text('About Us', style: TextStyle(fontSize: 18,)),
            ),
             Divider(),
            ListTile(
               title: Text('Log Out', style: TextStyle(fontSize: 18,)),
               onTap: () => Navigator.of(context).pushReplacementNamed(AuthScreen.routeName),
            ),
             Divider(),
            
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 8),
        itemBuilder: (ctx, i) => SingleProduct(),
        itemCount: 9,
      ),
    );
  }
}
