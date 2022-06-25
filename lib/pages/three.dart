import 'package:flutter/material.dart';

class TextFieldThree extends StatefulWidget {
  static const id = "/three";

  const TextFieldThree({Key? key}) : super(key: key);

  @override
  State<TextFieldThree> createState() => _TextFieldThreeState();
}

class _TextFieldThreeState extends State<TextFieldThree> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data, style: const TextStyle(fontSize: 25),),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'TextField',
              ),
              style: const TextStyle(fontSize: 25),
              onSubmitted: (text) {
                setState(() {
                  data = text;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
