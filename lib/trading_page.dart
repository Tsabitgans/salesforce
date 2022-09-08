// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class trading extends StatefulWidget {
  const trading({Key? key}) : super(key: key);

  @override
  State<trading> createState() => _tradingState();
}

class _tradingState extends State<trading> {
  int indexTheme = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: <Widget>[
          buildIconTrading(
              "TRANSACTION", "transaction-monthly", 5, "(MONTHLY)", indexTheme),
          buildIconTrading(
              "TRANSACTION", "transaction-yearly", 5, "(YEARLY)", indexTheme),
          buildIconTrading(
              "POINT AND", "point-and-deposit", 5, "DEPOSIT", indexTheme),
          buildIconTrading(
              "TOP 20", "top-20-quantity", 5, "(QUANTITY)", indexTheme),
          buildIconTrading("TOP 20 SALES", "top-20-sales-amount", 5,
              "(QUANTITY)", indexTheme),
          buildIconTrading(
              "TOP 20 HIGH", "top-20-high-margin", 5, "MARGIN", indexTheme),
          buildIconTrading("TOP 20", "top-20-declined-product", 5,
              "DECLINED PRODUCT", indexTheme),
          buildIconTrading("SALES ORDER", "sales-order-outstanding-recap", 5,
              "OUTSTANDING RECAP", indexTheme),
          buildIconTrading("SALES FORECAST", "sales-forecast-vs-reality", 5,
              "VS REALITY", indexTheme),
          buildIconTrading(
              "TOP 20 SALES", "top-20-sales-return", 5, "RETURN", indexTheme),
          buildIconTrading("TOP 20 RETURN", "top-20-return-to-vendor", 5,
              "TO VENDOR", indexTheme),
          buildIconTrading(
              "TOP 100", "top-100-margin", 5, "OF ITEM MASTER", indexTheme),
          buildIconTrading(
              "REPORT OF", "report-of-discount", 5, "DISCOUNT", indexTheme),
          buildIconTrading("SUMMARY ORDER", "summary-order", 5,
              "/OUTGOING PER MONTH", indexTheme),
          buildIconTrading(
              "PURCHASE ORDER", "purchase-order", 5, "OUTSTANDING", indexTheme),
          buildIconTrading(
              "PURCHAS ACC", "purchase-acc", 5, "BY VENDOR", indexTheme),
          buildIconTrading(
              "SALES SHIPMENT", "sales-shipment", 5, "INQUIRY", indexTheme),
          buildIconTrading(
              "SALES ORDER", "sales-order", 5, "OUTSTANDING", indexTheme),
        ],
      ),
    );
  }

  Container buildIconTrading(
      String title, String image, double height, String subTitle, indexTheme) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 43,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/tradingAsset/' +
                    image +
                    (indexTheme == 2 ? "-p" : "") +
                    '.png'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 6,
            ),
          )
        ],
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFFFDFDFD),
      ),
    );
  }
}
