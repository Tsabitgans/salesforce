import 'package:flutter/material.dart';
import 'package:project/home_menu/credit_limit.dart';
import 'package:project/home_menu/m_transaction.dart';

class homeTest extends StatelessWidget {
  const homeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment(0, -2.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 358.0,
                    height: 187.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment(0, -0.7),
                          scale: 2,
                          image: AssetImage('assets/homeAsset/person.png'),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 187,
                    width: 358,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment(0, 0.3),
                          child: Text(
                            "Tsabit",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0, 0.6),
                          child: Text(
                            "6283512654",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0, -0.375),
          child: Stack(
            children: [
              Container(
                height: 57,
                width: 321,
                decoration: BoxDecoration(
                  color: Color(0xFFC5F1FF),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 15,
                    ),
                    Container(
                      height: 48,
                      child: Column(
                        children: [
                          Container(
                            height: 3.2,
                          ),
                          Container(
                            alignment: Alignment(0, 0),
                            child: Text(
                              "Tanggal Transaksi",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF39B2D8),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "25/11/2004",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        children: [
                          Container(
                            height: 3.2,
                          ),
                          Container(
                            child: Text(
                              "Lorem Ipsum",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF39B2D8),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "NULL",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        children: [
                          Container(
                            height: 3.2,
                          ),
                          Container(
                            child: Text(
                              "Lorem Ipsum",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF39B2D8),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "NULL",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(-0.85, -0.05),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => creditLimit(),
                ),
              );
            },
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -0.45),
                  scale: 0.75,
                  image: AssetImage('assets/homeAsset/credit_limit.png'),
                ),
                color: Color(0xFFA7E2F4),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Container(
                alignment: Alignment(0, 0.7),
                color: Colors.transparent,
                child: Text(
                  "Credit Limit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, -0.05),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => mTransaction(),
                ),
              );
            },
            child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0.3, -0.7),
                  scale: 0.9,
                  image: AssetImage('assets/homeAsset/m_transaction.png'),
                ),
                color: Color(0xFFA7E2F4),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Container(
                alignment: Alignment(0, 0.85),
                child: Text(
                  "Monthly Trasaction",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.85, -0.05),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0.3, -0.75),
                scale: 0.8,
                image: AssetImage('assets/homeAsset/y_transaction.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Yearly   Trasaction",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.85, 0.40),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0, -0.7),
                scale: 0.8,
                image: AssetImage('assets/homeAsset/point_and_deposit.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Point and deposit",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.40),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0.3, -0.45),
                scale: 0.95,
                image: AssetImage('assets/homeAsset/barcode.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Barcode Stock Checking",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.85, 0.40),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0.3, -0.55),
                scale: 0.85,
                image: AssetImage('assets/homeAsset/top_amount.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Top 20 Sales amount",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.85, 0.85),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0.1, -0.45),
                scale: 1,
                image: AssetImage('assets/homeAsset/top_quantity.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Top 20 Sales Quantity",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.85),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0, -0.5),
                scale: 0.95,
                image: AssetImage('assets/homeAsset/sales_shipment.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Sales Shipment inquiry (By user)",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.85, 0.85),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0, -0.45),
                scale: 0.85,
                image: AssetImage('assets/homeAsset/sales_order.png'),
              ),
              color: Color(0xFFA7E2F4),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Container(
              alignment: Alignment(0, 0.85),
              child: Text(
                "Sales Order inquiry (By user)",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                  fontSize: 13.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
