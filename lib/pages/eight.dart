import 'package:flutter/material.dart';

class TextFieldEight extends StatefulWidget {
  static const id = "/eight";

  const TextFieldEight({Key? key}) : super(key: key);

  @override
  State<TextFieldEight> createState() => _TextFieldEightState();
}

class _TextFieldEightState extends State<TextFieldEight> {
  late TextEditingController controller;

  @override
  initState() {
    super.initState();
    controller = TextEditingController(text: "+998992223344");
    // controller.addListener(_listenController);
  }

  // void _listenController() {
  //   print(controller.text);
  // }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  void sendServer() {
    print(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // #card_number
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              readOnly: true,
              enabled: false,
              controller: controller,
              decoration: const InputDecoration(hintText: "Enter your text"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              onEditingComplete: sendServer,
            ),
          ),
        ],
      ),
    );
  }
}
