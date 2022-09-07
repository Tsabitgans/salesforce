import 'package:flutter/material.dart';
import 'package:project/main.dart';

class MTransaction extends StatefulWidget {
  const MTransaction({Key? key}) : super(key: key);

  @override
  State<MTransaction> createState() => _MTransactionState();
}

class _MTransactionState extends State<MTransaction> {
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
              Container(height: 15),
              Container(
                height: 450,
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
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              "NO",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
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
                            padding: const EdgeInsets.only(left: 100),
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
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        monthlyListBuild("1", "CASH", "0"),
                        monthlyListBuild("2", "KREDIT 1", "0"),
                        monthlyListBuild("3", "KREDIT 2", "0"),
                        monthlyListBuild("4", "KREDIT JANGKA", "0"),
                        monthlyListBuild("5", "EDC(T.TUNAI)", "0"),
                        monthlyListBuild("6", "DP", "0"),
                        monthlyListBuild("7", "DEBIT TABUNGAN", "0"),
                        monthlyListBuild("8", "E-MONEY", "0"),
                        monthlyListBuild("9", "EDC(BCA)", "0"),
                        monthlyListBuild("10", "DISKON", "0"),
                        monthlyListBuild("11", "TOTAL", "0"),
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

  Container monthlyListBuild(String no, String type, String nominal) {
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 25,
            child: Text(
              no,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 150,
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              type,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 50),
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
