//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './providers/auth.dart';

import './pages/home_page.dart';
import './pages/auth_page.dart';
import './pages/add_product_page.dart';
import './pages/edit_product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthCntrl(),
        ),
        ChangeNotifierProxyProvider<AuthCntrl, Products>(
          create: (context) => Products(),
          update: (context, auth, products) =>
              products..updateData(auth.token, auth.userId),
        ),
      ],
      builder: (context, child) => Consumer<AuthCntrl>(
        builder: (context, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.grey,
            accentColor: Colors.grey,
            cursorColor: Colors.black,
            textTheme: TextTheme(
              headline3: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 45.0,
                color: Colors.black,
              ),
              button: TextStyle(
                fontFamily: 'OpenSans',
              ),
              subtitle1: TextStyle(fontFamily: 'NotoSans'),
              bodyText2: TextStyle(fontFamily: 'NotoSans'),
            ),
          ),
          home: auth.isAuth
              ? HomePage()
              : FutureBuilder(
                  future: auth.autoLogin(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Scaffold(
                        body: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    return LoginPage();
                  },
                ),
          routes: {
            AddProductPage.route: (ctx) => AddProductPage(),
            EditProductPage.route: (ctx) => EditProductPage(),
          },
        ),
      ),
    );
  }
}
