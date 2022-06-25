import 'package:flutter/material.dart';
import 'package:text_field/pages/eight.dart';
import 'package:text_field/pages/five.dart';
import 'package:text_field/pages/four.dart';
import 'package:text_field/pages/nine.dart';
import 'package:text_field/pages/one.dart';
import 'package:text_field/pages/online_nine/amazon_one.dart';
import 'package:text_field/pages/online_nine/amazon_two.dart';
import 'package:text_field/pages/online_nine/railpage_block.dart';
import 'package:text_field/pages/online_nine/valid_email.dart';
import 'package:text_field/pages/seven.dart';
import 'package:text_field/pages/six.dart';
import 'package:text_field/pages/ten.dart';
import 'package:text_field/pages/three.dart';
import 'package:text_field/pages/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RailpageBlock(),
      routes: {
        /*
        TextFieldOne.id: (context) => const TextFieldOne(),
        TextFieldTwo.id: (context) => const TextFieldTwo(),
        TextFieldThree.id: (context) => const TextFieldThree(),
        TextFieldFour.id: (context) => const TextFieldFour(),
        TextFieldFive.id: (context) => const TextFieldFive(),
        TextFieldSix.id: (context) => const TextFieldSix(),
        TextFieldSeven.id: (context) => const TextFieldSeven(),
        TextFieldEight.id: (context) => const TextFieldEight(),
        TextFieldNine.id: (context) => const TextFieldNine(),
        TextFieldTen.id: (context) => const TextFieldTen(),
        */
        AmazonOne.id: (context) => const AmazonOne(),
        AmazonTwo.id: (context) => const AmazonTwo(),
        ValidateEmail.id: (context) => const ValidateEmail(),
        RailpageBlock.id: (context) => const RailpageBlock(),
      },
    );
  }
}

