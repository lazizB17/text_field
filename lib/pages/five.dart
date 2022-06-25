import 'package:flutter/material.dart';

class TextFieldFive extends StatefulWidget {
  static const id = "/five";

  const TextFieldFive({Key? key}) : super(key: key);

  @override
  State<TextFieldFive> createState() => _TextFieldFiveState();
}

class _TextFieldFiveState extends State<TextFieldFive> {
  FocusNode focusNodeOne = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              focusNode: focusNodeOne,
              decoration: const InputDecoration(hintText: "TextField"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              focusNodeOne.requestFocus();
            },
            child: const Text("Show Keyboard"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              focusNodeOne.unfocus();
            },
            child: const Text("Hide Keyboard"),
          ),
        ],
      ),
    );
  }
}
