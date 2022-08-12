import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class trading extends StatefulWidget {
  const trading({Key? key}) : super(key: key);

  @override
  State<trading> createState() => _tradingState();
}

class _tradingState extends State<trading> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
        ),
      ],
    );
  }
}
