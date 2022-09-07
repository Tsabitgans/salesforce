import 'package:flutter/material.dart';
import 'package:project/main.dart';

class CreditLimit extends StatefulWidget {
  const CreditLimit({Key? key}) : super(key: key);

  @override
  State<CreditLimit> createState() => _CreditLimitState();
}

class _CreditLimitState extends State<CreditLimit> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10),
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
                  Container(width: 30),
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    width: 200,
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
                              "CREDIT LIMIT",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 245,
              ),
              Container(
                padding: const EdgeInsets.only(left: 38),
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: 135,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Color(0xFF174749),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/homeAsset/cash.png"),
                              ),
                            ),
                          ),
                          const Text(
                            "Rp 0",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: const Text(
                              "Credit Limit : 4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 160,
                      width: 135,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Color(0xFF174749),
                      ),
                      child: Column(
                        children: [
                          Container(),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/homeAsset/card.png"),
                              ),
                            ),
                          ),
                          const Text(
                            "Rp 0",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: const Text(
                              "Credit Limit : 3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/text.jpg"),
          )),
        ),
      ),
    );
  }
}
