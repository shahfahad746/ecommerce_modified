// import 'package:ecommerce/screens/account_info/account_info.dart';
// import 'package:ecommerce/screens/drawer/custom_drawer.dart';
import 'package:ecommerce/screens/items/items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Items(),
    );
  }
}
