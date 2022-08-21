import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class trading extends StatefulWidget {
  const trading({Key? key}) : super(key: key);

  @override
  State<trading> createState() => _tradingState();
}

class _tradingState extends State<trading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 38,
        mainAxisSpacing: 18,
        crossAxisCount: 3,
        children: <Widget>[
          buildIconTrading("monthly transaction", "m-transaction", 5),
          buildIconTrading("yearly  transaction", "y-transaction", 7),
          buildIconTrading("point and    deposit", "point-and-deposit", 7),
          buildIconTrading(
              "top 02 sales (quantity)", "top-20-sales-quantity", 7),
          buildIconTrading("Top 20 sales (amount)", "top-20-sales-amount", 8),
          buildIconTrading("Top 20 high margin", "top-20-high-margin", 8),
          buildIconTrading(
              "Top 20 declined product", "top-20-declined-product", 8),
          buildIconTrading(
              "Sales order oustanding Recap", "sales-order-outstanding", 5),
          buildIconTrading("Sales forecast VS reality", "sale-forecast", 9),
          buildIconTrading("Top 20 sales return", "top-20-sales-return", 8),
          buildIconTrading(
              "Top 20 return to vendor", "top-20-sales-return-to-vendor", 9),
          buildIconTrading("Top 100 margin of item master",
              "top-100-margin-of-item-master", 9),
          buildIconTrading("Report of discount", "report-of-discount", 9),
          buildIconTrading(
              "Summary order / outgoing per month", "summary-order", 0),
          buildIconTrading("Purchase order outstanding", "purchase-order", 9),
          buildIconTrading("Top 20 quantity", "top-20-quantity", 13),
          buildIconTrading("Sales shipment inquiry", "sales-shipment", 5),
          buildIconTrading("Sales order outstanding", "sales-order", 5),
        ],
      ),
    );
  }

  Container buildIconTrading(String title, String image, double height) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -0.45),
                  scale: 0.75,
                  image: AssetImage('assets/tradingAsset/' + image + '.png'),
                ),
              ),
            ),
            Container(
              height: height,
            ),
            Container(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Color(0xFFA7E2F4),
      ),
    );
  }
}
