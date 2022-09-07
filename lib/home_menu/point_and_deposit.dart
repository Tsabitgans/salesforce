import 'package:flutter/material.dart';
import 'package:project/main.dart';

class PointAndDeposit extends StatefulWidget {
  const PointAndDeposit({Key? key}) : super(key: key);

  @override
  State<PointAndDeposit> createState() => _PointAndDepositState();
}

class _PointAndDepositState extends State<PointAndDeposit> {
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
                              "POINT AND DEPOSIT",
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
              Container(height: 15),
              Container(
                height: 280,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 1.5,
                      offset: const Offset(0, 8), // changes position of shadow
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
                            padding: const EdgeInsets.only(left: 25),
                            child: const Text(
                              "SALDO",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 130),
                            child: const Text(
                              "NOMINAL",
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
                        monthlyListBuild("CASH", "0"),
                        monthlyListBuild("KREDIT 1", "0"),
                        monthlyListBuild("KREDIT 2", "0"),
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

  Container monthlyListBuild(String type, String nominal) {
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 10),
      child: Row(
        children: [
          Container(
            width: 150,
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              type,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              nominal,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
