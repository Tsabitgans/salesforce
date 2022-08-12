import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class productPage extends StatefulWidget {
  const productPage({Key? key}) : super(key: key);

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment(-0.5, 0.4),
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF39B2D8),
          child: Text(
            "Categories",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            color: Colors.white,
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFF39B2D8),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Container(
            alignment: Alignment(0, 0),
            child: Text(
              "Promo",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
