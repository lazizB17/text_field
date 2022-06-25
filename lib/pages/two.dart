import 'package:flutter/material.dart';

class TextFieldTwo extends StatefulWidget {
  static const id = "/two";

  const TextFieldTwo({Key? key}) : super(key: key);

  @override
  State<TextFieldTwo> createState() => _TextFieldTwoState();
}

class _TextFieldTwoState extends State<TextFieldTwo> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data, style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(hintText: "TextField"),
                style: const TextStyle(fontSize: 35),
                minLines: 1,
                maxLines: 6,
                maxLength: 10,
                textInputAction: TextInputAction.newline,
                onChanged: (value) {
                  setState(() {
                    data = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
