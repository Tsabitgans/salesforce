import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 38,
        mainAxisSpacing: 18,
        crossAxisCount: 3,
        children: <Widget>[
          buildIconMaster("Customer", "customer", 6, 15),
          buildIconMaster("Vendor", "vendor", 6, 15),
          buildIconMaster("Employee", "employee", 6, 15),
          buildIconMaster("COA", "coa", 6, 15),
        ],
      ),
    );
  }

  Container buildIconMaster(
      String title, String image, double height, double fontSize) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -0.45),
                  image: AssetImage('assets/masterAsset/' + image + '.png'),
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
                  fontWeight: FontWeight.w800,
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
