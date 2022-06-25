import 'package:flutter/material.dart';

class TextFieldSix extends StatefulWidget {
  static const id = "/six";

  const TextFieldSix({Key? key}) : super(key: key);

  @override
  State<TextFieldSix> createState() => _TextFieldSixState();
}

class _TextFieldSixState extends State<TextFieldSix> {
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
              // focusNode: focusNodeOne,
              decoration: const InputDecoration(
                  hintText: "Card Number: 4242 4242 4242 4242"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              onChanged: (card) {
                if (card.length == 16) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),

          // #date
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              // focusNode: focusNodeTwo,
              decoration: const InputDecoration(hintText: "Date: MM : YY"),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.next,
              onChanged: (date) {
                if (date.length == 5) {
                  FocusScope.of(context).nextFocus();
                }
              },
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
              onChanged: (cvc) {
                if (cvc.length == 3) {
                  FocusScope.of(context).unfocus();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
