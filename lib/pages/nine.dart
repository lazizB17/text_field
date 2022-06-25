import 'package:flutter/material.dart';

class TextFieldNine extends StatefulWidget {
  static const id = "/nine";

  const TextFieldNine({Key? key}) : super(key: key);

  @override
  State<TextFieldNine> createState() => _TextFieldNineState();
}

class _TextFieldNineState extends State<TextFieldNine> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // #body
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          height: 80,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.circular(22.5),
          ),
          child: const TextField(
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              isCollapsed: true,
              hintText: "TextField",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
