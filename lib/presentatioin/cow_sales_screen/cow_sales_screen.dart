import 'package:flutter/material.dart';

class CowSales extends StatefulWidget {
  const CowSales({super.key});

  @override
  State<CowSales> createState() => _CowSalesState();
}

class _CowSalesState extends State<CowSales> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("गायी विक्रीसाठी"),
        actions: const  [
          Icon(Icons.arrow_back),
          Image(image: AssetImage("assetName"))
       
        ],
      ),
    ));
  }
}
