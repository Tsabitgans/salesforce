import 'package:flutter/material.dart';

class BarcodeScan extends StatefulWidget {
  const BarcodeScan({Key? key}) : super(key: key);

  @override
  State<BarcodeScan> createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildQrView(context),
        ],
      ),
    );
  }

  buildQrView(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(),
      ),
    );
  }
}
