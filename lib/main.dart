import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './auth_provider/auth.dart';
import './screens/products_overview.dart';
import './screens/product_detail.dart';
import './profile.dart';
import './screens/auth_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sec2hand Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: auth.isAuth ? AllProducts() : AuthScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            AllProducts.routeName: (ctx) => AllProducts(),
            ProfileScreen.routeName: (ctx) => ProfileScreen(),
            AuthScreen.routeName: (ctx) => AuthScreen(),
          },
        ),
      ),
    );
  }
}
