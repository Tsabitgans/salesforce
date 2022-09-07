// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;

  const BottomNav(
      {Key? key, this.defaultSelectedIndex = 0, required this.onChange})
      : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool isActive = true;
  int currentIndex = 0;

  double height = 100;
  double width = 0;

  int _selectedItemIndex = 0;

  var bank = [
    const Color(0xFF174749),
    const Color(0xFF008B92),
    const Color(0xFF008B92),
    const Color(0xFFDE8F19),
    const Color(0xFFDE2519),
    const Color(0xFF3D1E6D),
  ];

  late Color? defaultColor;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _selectedItemIndex = widget.defaultSelectedIndex;
    defaultColor = bank[_selectedItemIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildNavItems(0, "home", 1, const Color(0xFF41DE78), "HOME"),
        BuildNavItems(1, "product", 1, const Color(0xFF0DF5E3), "PRODUCT"),
        BuildNavItems(2, "trading", 1, const Color(0xFF0DF5E3), "TRADING"),
        BuildNavItems(3, "inventory", 1, const Color(0xFFF6EE16), "INVENTORY"),
        BuildNavItems(4, "master", 1, const Color(0xFFF60000), "MASTER"),
        BuildNavItems(5, "finance", 1, const Color(0xFF8874A3), "FINANCE")
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildNavItems(
      int index, String name, double scale, var SelectedColor, String title) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.onChange(index);

          setState(() {
            _selectedItemIndex = index;

            defaultColor = bank[index];
          });
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color:
                  _selectedItemIndex == index ? SelectedColor : defaultColor),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/" + name + ".png"))),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      color: _selectedItemIndex == index
                          ? Colors.black
                          : Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
