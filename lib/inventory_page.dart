import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class inventoryPage extends StatefulWidget {
  const inventoryPage({Key? key}) : super(key: key);

  @override
  State<inventoryPage> createState() => _inventoryPageState();
}

class _inventoryPageState extends State<inventoryPage> {
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
          buildIconInventory("Inventory Ratio", "inventory-ratio", 6, 12.5),
          buildIconInventory(
              "Invt. historycal Transaction", "inventory-history", 7, 11),
          buildIconInventory("Inventory Amount", "inventory-amount", 7, 11),
          buildIconInventory(
              "Inventory Coast & Price List", "inventory-coast", 7, 11),
          buildIconInventory("Safety Stock Info", "safety-stock-info", 7, 11),
          buildIconInventory("Item Age Compositing   Value", "item-age", 5, 10),
          buildIconInventory(
              "Inventory Recalculated", "inv-recalculated", 7, 11),
          buildIconInventory("Report Of Inventory Valuation",
              "report-of-inventory-valuation", 4.5, 9.5),
          buildIconInventory(
              "Goods Recieved Notes", "goods-received-notes", 7, 11),
          buildIconInventory(
              "Return From Customer", "return-from-customer", 7, 11),
          buildIconInventory("Return To vendor", "return-to-vendor", 7, 11),
          buildIconInventory("Report Of stock", "report-of-stock", 7, 11),
          buildIconInventory(
              "Report inventory Transfer", "report-inventory-transfer", 7, 10),
          buildIconInventory(
              "Report Warehouse Transfer", "report-warehouse-transfer", 6, 10),
          buildIconInventory(
              "Report Inventory Reclass", "report-inventory-reclass", 7, 10),
          buildIconInventory("Report Pending Transaction",
              "report-pending-transaction", 7, 11),
        ],
      ),
    );
  }

  Container buildIconInventory(
      String title, String image, double height, double fontSize) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -0.45),
                  image: AssetImage('assets/inventoryAsset/' + image + '.png'),
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
                  fontSize: fontSize,
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
