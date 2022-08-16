import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class creditLimit extends StatefulWidget {
  const creditLimit({Key? key}) : super(key: key);

  @override
  State<creditLimit> createState() => _creditLimitState();
}

class _creditLimitState extends State<creditLimit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment(-0.25, 0),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "Credit Limit",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFC5F1FF),
        child: Column(
          children: [
            Container(
              height: 30,
              color: Colors.transparent,
            ),
            Container(
              height: 85,
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Color(0xFFC5F1FF),
                      image: DecorationImage(
                        image: AssetImage("assets/homeAsset/cash.png"),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width - 135,
                        height: 40,
                        child: Text(
                          "Rp 0",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          "Credit Limit : 1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
            Container(
              height: 20,
              color: Colors.transparent,
            ),
            Container(
              height: 85,
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Color(0xFFC5F1FF),
                      image: DecorationImage(
                        image: AssetImage("assets/homeAsset/credit.png"),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width - 135,
                        height: 40,
                        child: Text(
                          "Rp 0",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          "Credit Limit : 1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
