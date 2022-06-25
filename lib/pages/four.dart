import 'package:flutter/material.dart';

class TextFieldFour extends StatefulWidget {
  static const id = "/four";

  const TextFieldFour({Key? key}) : super(key: key);

  @override
  State<TextFieldFour> createState() => _TextFieldFourState();
}

class _TextFieldFourState extends State<TextFieldFour> {
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
              /// Hamma datalarni olib ish tugagach bajarilishi kerak bo'lgan funksiya
              // onEditingComplete: () {
              //   print("Completed");
              // },

              onAppPrivateCommand: (text, map) {
                print("text: $text");
                print("map: $map");
              },
            ),
          ),
        ],
      ),
    );
  }
}
