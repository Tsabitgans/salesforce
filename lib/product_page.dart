import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/rendering/box.dart';

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
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 400,
                  child: ListView(
                    children: [
                      buildCategories(),
                      Container(height: 20),
                      buildCategories(),
                      Container(height: 20),
                      buildCategories(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Row buildCategories() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2 - 35,
          height: 180,
          child: Column(
            children: [
              Container(
                height: 8,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(width: 1.5, color: Colors.black),
                ),
              ),
              Container(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text("Text"),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Container(
          width: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2 - 35,
          height: 180,
          child: Column(
            children: [
              Container(
                height: 8,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(width: 1.5, color: Colors.black),
                ),
              ),
              Container(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text("Text"),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
