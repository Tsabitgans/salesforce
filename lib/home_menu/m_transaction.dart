import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mTransaction extends StatefulWidget {
  const mTransaction({Key? key}) : super(key: key);

  @override
  State<mTransaction> createState() => _mTransactionState();
}

class _mTransactionState extends State<mTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment(-0.25, 0),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "Monthly Transaction",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
