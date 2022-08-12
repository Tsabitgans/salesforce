import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;

  BottomNav({this.defaultSelectedIndex = 0, required this.onChange});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool isActive = true;
  int currentIndex = 0;

  double height = 100;
  double width = 0;

  int _selectedItemIndex = 0;

  var White = Colors.white;
  var Grey = Color(0xFFD9D9D9);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedItemIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildNavItems(0, "home", 65, Grey),
        BuildNavItems(1, "product", 55, White),
        BuildNavItems(2, "trading", 75, Grey),
        BuildNavItems(3, "inventory", 70, White),
        BuildNavItems(4, "master", 70, Grey),
        BuildNavItems(5, "finance", 40, White)
      ],
    );
  }

  Widget BuildNavItems(int index, String name, double scale, var DefaultColor) {
    return GestureDetector(
        onTap: () {
          widget.onChange(index);
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: Container(
          height: 85,
          decoration: BoxDecoration(
              color: _selectedItemIndex == index ? Colors.blue : DefaultColor),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 6,
                child: Image.asset(
                  "assets/images/" + name + ".png",
                  scale: scale,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 6,
                alignment: Alignment(0, 0.65),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ],
          ),
        ));
  }
}
