import 'package:flutter/material.dart';

class TextFieldSeven extends StatefulWidget {
  static const id = "/text_field_seven";

  const TextFieldSeven({Key? key}) : super(key: key);

  @override
  State<TextFieldSeven> createState() => _TextFieldSevenState();
}

class _TextFieldSevenState extends State<TextFieldSeven> {
  // fields
  FocusNode focusNodeOne = FocusNode();
  FocusNode focusNodeTwo = FocusNode();
  FocusNode focusNodeThree = FocusNode();

  @override
  dispose() {
    focusNodeOne.dispose();
    focusNodeTwo.dispose();
    focusNodeThree.dispose();
    super.dispose();
  }

  // logic method
  void _fixedFocusOne(String card) {
    if (card.length == 16) {
      FocusScope.of(context).requestFocus(focusNodeTwo);
    }
  }

  void _fixedFocusTwo(String date) {
    if (date.length == 5) {
      FocusScope.of(context).requestFocus(focusNodeThree);
    }
  }

  void _fixedFocusThree(String cvc) {
    if (cvc.length == 3) {
      focusNodeThree.unfocus();
    }
  }

  // widget method
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
              focusNode: focusNodeOne,
              decoration: const InputDecoration(
                  hintText: "Card Number: 4242 4242 4242 4242"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              onChanged: _fixedFocusOne,
            ),
          ),

          // #date
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              focusNode: focusNodeTwo,
              decoration: const InputDecoration(hintText: "Date: MM : YY"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.next,
              onChanged: _fixedFocusTwo,
            ),
          ),

          // #cvc
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              focusNode: focusNodeThree,
              decoration: const InputDecoration(hintText: "CVC: 123"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              onChanged: _fixedFocusThree,
            ),
          ),
        ],
      ),
    );
  }
}
