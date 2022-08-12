import 'package:flutter/material.dart';
import 'package:project/botton_nav_bar.dart';
import 'package:project/home_page.dart';
import 'package:project/home_test.dart';
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
      home: RootPage(),
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
  final Screen = [
    homeTest(),
    productPage(),
    trading(),
    trading(),
    trading(),
    trading(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCAE9FF),
      bottomNavigationBar: BottomNav(
        onChange: (val) {
          setState(() {
            _indexPage = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      body: Screen[_indexPage],
    );
  }
}
