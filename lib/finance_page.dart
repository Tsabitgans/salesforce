// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:project/home_menu/credit_limit.dart';

// ignore: camel_case_types
class financePage extends StatefulWidget {
  const financePage({Key? key}) : super(key: key);

  @override
  State<financePage> createState() => _financePageState();
}

class _financePageState extends State<financePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 30,
        mainAxisSpacing: 18,
        crossAxisCount: 3,
        children: <Widget>[
          buildIconMaster("Gross profit", "gross-profit", 9, 13),
          buildIconMaster("Vendor", "ar-aging", 9, 13),
          buildIconMaster("A / R Aging", "ap-aging", 9, 12),
          buildIconMaster("Cash Statement", "cash-statement", 5, 12),
          buildIconMaster("Summary Expensive", "summary-expensive", 6, 11),
          buildIconMaster("Trial Balance", "trial-balance", 9, 12),
          buildIconMaster("Balance sheet", "balance-sheet", 9, 12),
          buildIconMaster("Income Statement", "income-statement", 6, 12),
          buildIconMaster("Balance sheet (Q)", "balance-sheet-q", 6, 12),
          buildIconMaster("Income Statement (Q)", "income-statement-q", 6, 12),
          buildIconMaster("Summary     Jurnal", "summary-jurnal", 6, 12),
          buildIconMaster("Fixed Assets", "fixed-assets", 10, 12),
        ],
      ),
    );
  }

  Container buildIconMaster(
      String title, String image, double height, double fontSize) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreditLimit(),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: const Alignment(0, -0.45),
                  image: AssetImage('assets/financeAsset/' + image + '.png'),
                ),
              ),
            ),
            Container(
              height: height,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w800,
              ),
            )
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
