import 'package:flutter/material.dart';
import 'package:project/botton_nav_bar.dart';
import 'package:project/finance_page.dart';

import 'package:project/home_test.dart';
import 'package:project/inventory_page.dart';
import 'package:project/master_page.dart';
import 'package:project/product_page.dart';
import 'package:project/trading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _indexPage = 0;
  final screenData = [
    const homeTest(),
    const productPage(),
    const trading(),
    const inventoryPage(),
    const masterPage(),
    const financePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
      bottomNavigationBar: BottomNav(
        onChange: (val) {
          setState(() {
            _indexPage = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      body: screenData[_indexPage],
    );
  }
}
