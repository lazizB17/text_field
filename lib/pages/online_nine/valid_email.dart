import 'package:flutter/material.dart';

class ValidateEmail extends StatefulWidget {
  static const id = "/valid_email";

  const ValidateEmail({Key? key}) : super(key: key);

  @override
  State<ValidateEmail> createState() => _ValidateEmailState();
}

class _ValidateEmailState extends State<ValidateEmail> {
  final key = GlobalKey<FormState>();
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              // #validator
              validator: (text) {
                if (text != null &&
                    text.length > 4 &&
                    text.endsWith("gmail.com") &&
                    text.contains("@")) {
                  return null;
                } else {
                  return "Please check again your email !";
                }
              },

              // #onSaved
              onSaved: (text) {
                if (text != null) {
                  email = text;
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.attach_email),
                hintText: "Your email...",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                key.currentState!.validate();
                print(email);
                key.currentState!.save();
                print(email);
              },
              child: const Text("Check email"),
            ),
          ],
        ),
      ),
    );
  }
}
