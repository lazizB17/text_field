import 'package:flutter/material.dart';

class AmazonOne extends StatefulWidget {
  static const id = "/AmazonOne";

  const AmazonOne({Key? key}) : super(key: key);

  @override
  State<AmazonOne> createState() => _AmazonOneState();
}

class _AmazonOneState extends State<AmazonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #appBar
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Amazon", style: TextStyle(fontSize: 40, fontFamily: "FontsFree-Net-Billabong"),),
      ),

      // #body
      body: const Center(
        child: Text("Welcome to Amazon", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
      ),
    );
  }
}
