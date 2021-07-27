import 'package:flutter/material.dart';
import 'package:flutter_app1/core/store.dart';
import 'package:flutter_app1/pages/Home_page.dart';
import 'package:flutter_app1/pages/Login_page.dart';
import 'package:flutter_app1/pages/cart_page.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'package:flutter_app1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
