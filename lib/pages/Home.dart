import "package:flutter/material.dart";
import 'package:flutter_app1/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome guys"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
