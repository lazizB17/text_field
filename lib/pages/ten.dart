import 'package:flutter/material.dart';

class TextFieldTen extends StatefulWidget {
  static const id = "/ten";

  const TextFieldTen({Key? key}) : super(key: key);

  @override
  State<TextFieldTen> createState() => _TextFieldTenState();
}

class _TextFieldTenState extends State<TextFieldTen> {
  final key = GlobalKey<FormState>();
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (text) {
                if (text != null && text.length >= 8) {
                  return null;
                } else {
                  return "Please enter valid password!";
                }
              },
              onSaved: (text) {
                if (text != null) {
                  password = text;
                }
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                key.currentState!.validate();
                print(password);
                key.currentState!.save();
                print(password);
              },
              child: Text("Check"),
            )
          ],
        ),
      ),
    );
  }
}
