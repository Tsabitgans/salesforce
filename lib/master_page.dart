// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';

class masterPage extends StatefulWidget {
  const masterPage({Key? key}) : super(key: key);

  @override
  State<masterPage> createState() => _masterPageState();
}

class _masterPageState extends State<masterPage> {
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
          buildIconMaster("Customer", "customer", 6, 12),
          buildIconMaster("Vendor", "vendor", 6, 12),
          buildIconMaster("Employee", "employee", 6, 12),
          buildIconMaster("COA", "coa", 6, 12),
        ],
      ),
    );
  }

  Container buildIconMaster(
      String title, String image, double height, double fontSize) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: const Alignment(0, -0.45),
                image: AssetImage('assets/masterAsset/' + image + '.png'),
              ),
            ),
          ),
          Container(
            height: height,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
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
