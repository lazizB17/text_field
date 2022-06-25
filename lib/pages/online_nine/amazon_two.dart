import 'package:flutter/material.dart';

class AmazonTwo extends StatefulWidget {
  static const id = "/amazon_two";

  const AmazonTwo({Key? key}) : super(key: key);

  @override
  State<AmazonTwo> createState() => _AmazonTwoState();
}

class _AmazonTwoState extends State<AmazonTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #body
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset("assets/images/amazon.png",
                  height: 80, width: 80),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child: Text(
                      "From Amazon",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
