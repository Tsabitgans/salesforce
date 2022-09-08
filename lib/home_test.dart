// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:project/home_menu/credit_limit.dart';
import 'package:project/home_menu/m_transaction.dart';
import 'package:project/home_menu/point_and_deposit.dart';
import 'package:project/home_menu/sales_shipment_inquiry.dart';
import 'package:project/home_menu/top_20_sales_amount.dart';
import 'package:project/home_menu/top_20_sales_quantity.dart';
import 'package:project/home_menu/y_transaction.dart';

class homeTest extends StatefulWidget {
  const homeTest({Key? key}) : super(key: key);

  @override
  State<homeTest> createState() => _homeTestState();
}

int indexTheme = 1;

class _homeTestState extends State<homeTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            alignment: const Alignment(0, -2.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    color: Color(0xFF154748),
                  ),
                  child: Row(
                    children: [
                      Container(width: 20),
                      const Text(
                        "Search",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(width: 150),
                      Container(
                        width: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/homeAsset/search.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: MediaQuery.of(context).size.height * 0.24,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                ),
                Container(height: 15),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: const BoxDecoration(
                    color: Color(0xFF174749),
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      infoBar(),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 6,
                            ),
                            const Text(
                              "Belanja Rata2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              height: 2,
                            ),
                            const Text(
                              "0",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 6,
                            ),
                            const Text(
                              "Point",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              height: 2,
                            ),
                            const Text(
                              "0",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            homeIconBuild(const CreditLimit(), "CREDIT LIMIT",
                                "credit-limit", "", indexTheme),
                            Container(width: 20),
                            homeIconBuild(const MTransaction(), "TRANSACTION",
                                "transaction-monthly", "(MONTHLY)", indexTheme),
                            Container(width: 20),
                            homeIconBuild(const YTransaction(), "TRANSACTION",
                                "transaction-yearly", "(YEARLY)", indexTheme),
                          ],
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            homeIconBuild(const PointAndDeposit(), "POINT AND",
                                "point-and-deposit", "DEPOSIT", indexTheme),
                            Container(width: 20),
                            homeIconBuild(
                                const YTransaction(),
                                "BARCODE STOCK",
                                "barcode-stock-checking",
                                "CHECKING",
                                indexTheme),
                            Container(width: 20),
                            homeIconBuild(const SalesAmount(), "TOP 20 SALES",
                                "top-20-sales", "(AMOUNT)", indexTheme),
                          ],
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            homeIconBuild(const SalesQuantity(), "TOP 20 SALES",
                                "top-20-quantity", "(QUANTITY)", indexTheme),
                            Container(width: 20),
                            homeIconBuild(
                                const SalesShipment(),
                                "SALES SHIPMENT",
                                "sales-shipment",
                                "INQUIRY",
                                indexTheme),
                            Container(width: 20),
                            homeIconBuild(
                              const YTransaction(),
                              "SALES ORDER",
                              "sales-order",
                              "LIST",
                              indexTheme,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded homeIconBuild(Class, String title, String image, title2, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Class,
            ),
          );
        },
        child: Container(
          height: 100,
          width: 90,
          decoration: const BoxDecoration(
            color: Color(0xFFFDFDFD),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 5,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/homeAsset/" +
                        image +
                        (index == 2 ? "-p" : "") +
                        ".png"),
                  ),
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                title2,
                style:
                    const TextStyle(fontSize: 8.5, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded infoBar() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Last Transaction",
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            height: 2,
          ),
          const Text(
            "29/07/2022",
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
