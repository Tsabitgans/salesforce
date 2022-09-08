import 'package:flutter/material.dart';

import '../main.dart';

class SalesShipment extends StatefulWidget {
  const SalesShipment({Key? key}) : super(key: key);

  @override
  State<SalesShipment> createState() => _SalesShipmentState();
}

class _SalesShipmentState extends State<SalesShipment> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: const Color(0xFFE4E4E4),
          child: Column(
            children: [
              Row(
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
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          scale: 0.5,
                          image: AssetImage("assets/images/back.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF174749),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 4),
                          child: const Text(
                            "SALES SHIPMENT INQUIRY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "BY (USER)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/homeAsset/search-icon.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/homeAsset/date.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      color: const Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0.01,
                          blurRadius: 0.8,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.125,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Expanded(
                              child: Text(
                                "ITEM NAME",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "SALES NO.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "SALES DATE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "CUSTOMER",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0.01,
                          blurRadius: 0.8,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF41DE78),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11),
                                    ),
                                  ),
                                  child: const Text(
                                    "19 APR 2021",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/homeAsset/arrow.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF41DE78),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11),
                                    ),
                                  ),
                                  child: const Text(
                                    "28 APR 2021",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "1/1",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Container(width: 10),
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF41DE78),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/homeAsset/left-arrow.png")),
                                ),
                                Container(width: 10),
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF41DE78),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: const Image(
                                      image: AssetImage(
                                          "assets/homeAsset/right-arrow.png")),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
