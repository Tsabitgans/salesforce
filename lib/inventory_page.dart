// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';

class inventoryPage extends StatefulWidget {
  const inventoryPage({Key? key}) : super(key: key);

  @override
  State<inventoryPage> createState() => _inventoryPageState();
}

class _inventoryPageState extends State<inventoryPage> {
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
          buildIconInventory(
              "INVENTORY", "inventory-ratio", 8, "RATIO", indexTheme),
          buildIconInventory("INVT. HISTORICAL", "inventory-history", 8,
              "TRANSACTION", indexTheme),
          buildIconInventory(
              "INVENTORY", "inventory-amount", 8, "AMOUNT", indexTheme),
          buildIconInventory("INVENTORY COAST", "inventory-coast", 7,
              "& PRICE LIST", indexTheme),
          buildIconInventory(
              "SAFETY STOCK", "safety-stock-info", 8, "INFO", indexTheme),
          buildIconInventory(
              "ITEM AGE", "item-age", 8, "COMPOSITION VALUE", indexTheme),
          buildIconInventory(
              "INVENTORY", "inv-recalculated", 8, "RECALCULATED", indexTheme),
          buildIconInventory("REPORT OF", "report-of-inventory-valuation", 8,
              "INVENTORY VALUATION", indexTheme),
          buildIconInventory(
              "GOODS", "goods-received-notes", 8, "RECIEVE NOTES", indexTheme),
          buildIconInventory(
              "RETURN FROM", "return-from-customer", 8, "CUSTOMER", indexTheme),
          buildIconInventory(
              "RETURN TO", "return-to-vendor", 8, "VENDOR", indexTheme),
          buildIconInventory(
              "REPORT OF", "report-of-stock", 8, "STOCK", indexTheme),
          buildIconInventory("REPORT INVENTORY", "report-inventory-transfer", 7,
              "TRANSFER", indexTheme),
          buildIconInventory("REPORT WAREHOUSE", "report-warehouse-transfer", 7,
              "TRANSFER", indexTheme),
          buildIconInventory("REPORT INVENTORY", "report-inventory-reclass", 7,
              "RECLASS", indexTheme),
          buildIconInventory("REPORT PENDING", "report-pending-transaction", 8,
              "TRANSACTION", indexTheme),
        ],
      ),
    );
  }

  Container buildIconInventory(
      String title, String image, double fontSize, String title2, index) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.only(top: 2),
        child: Column(
          children: [
            Container(
              height: 38,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: const Alignment(0, -0.45),
                  image: AssetImage('assets/inventoryAsset/' +
                      image +
                      (index == 2 ? "-p" : "") +
                      '.png'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                title2,
                style: const TextStyle(fontSize: 5),
              ),
            ),
          ],
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFFFDFDFD),
      ),
    );
  }
}
