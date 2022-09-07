import 'package:flutter/material.dart';

import 'package:project/main.dart';

class YTransaction extends StatefulWidget {
  const YTransaction({Key? key}) : super(key: key);

  @override
  State<YTransaction> createState() => _YTransactionState();
}

class _YTransactionState extends State<YTransaction> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: const Color(0xFFE4E4E4),
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RootPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          scale: 0.5,
                          image: AssetImage("assets/images/back.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(width: 20),
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    width: 215,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF174749),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text(
                              "TRANSACTION (MONTHLY)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 320,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1.5,
                      offset: const Offset(3, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      width: 300,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xFF41DE78),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 40),
                            child: const Text(
                              "MONTH",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 100),
                            child: const Text(
                              "VALUE",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Column(
                      children: [
                        monthlyListBuild("JAN", "0"),
                        monthlyListBuild("FEB", "0"),
                        monthlyListBuild("MAR", "0"),
                        monthlyListBuild("APR", "0"),
                        monthlyListBuild("MAY", "0"),
                        monthlyListBuild("JUN", "0"),
                        monthlyListBuild("JUL", "0"),
                        monthlyListBuild("AUG", "0"),
                        monthlyListBuild("SEP", "0"),
                        monthlyListBuild("OCT", "0"),
                        monthlyListBuild("NOV", "0"),
                        monthlyListBuild("DES", "0"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container monthlyListBuild(String month, String value) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 6),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              month,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 85),
            width: 80,
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
