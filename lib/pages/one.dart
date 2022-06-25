import 'package:flutter/material.dart';

class TextFieldOne extends StatefulWidget {
  static const id = "/one";

  const TextFieldOne({Key? key}) : super(key: key);

  @override
  State<TextFieldOne> createState() => _TextFieldOneState();
}

class _TextFieldOneState extends State<TextFieldOne> {
  void _show() {
    showDialog(context: context, builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  // gender = const Text("Male");
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              onTap: () {
                setState(() {
                  // gender = const Text("Female");
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Gender',
            ),
            style: const TextStyle(fontSize: 25),
            onTap: () {
              print("on tab");
            },
          ),
        ),
      ),
    );
  }
}
