// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

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
        Container(height: 25),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 50,
          decoration: const BoxDecoration(
            color: Color(0xFF008C92),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                child: const Text(
                  "Product Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(height: 30),
        Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/productAssets/master-image.png"),
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width - 5,
          decoration: const BoxDecoration(
            color: Color(0xFF008C92),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        Container(
          height: 45,
          width: MediaQuery.of(context).size.width - 60,
          decoration: const BoxDecoration(
              color: Color(0xFF008C92),
              borderRadius: BorderRadius.all(
                Radius.circular(13),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  "Promo",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 370,
                child: ListView(
                  children: [
                    buildCategories(
                        "MATERIAL BANGUNAN", "PERLENGKAPAN & AKSESORIS"),
                    Container(height: 40),
                    buildCategories("", ""),
                    Container(height: 40),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Row buildCategories(String title, String title2) {
    return Row(
      children: [
        Container(
          width: 140,
          height: 180,
          child: Column(
            children: [
              Container(
                height: 15,
              ),
              Container(
                height: 75,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Container(
          width: 40,
        ),
        Container(
          width: 140,
          height: 180,
          child: Column(
            children: [
              Container(
                height: 15,
              ),
              Container(
                height: 75,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                  border: Border.all(
                    width: 2.5,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    title2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: const BoxDecoration(
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
