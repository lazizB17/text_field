import 'package:flutter/material.dart';

class Neumorphism extends StatefulWidget {
  static const id = "/neumorphism";

  const Neumorphism({Key? key}) : super(key: key);

  @override
  State<Neumorphism> createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: const Color(0xffe0e0e0),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffbebebe),
                offset: Offset(15, 15),
                blurRadius: 30,
              ),
              BoxShadow(
                color: Color(0xffffffff),
                offset: Offset(-15, -15),
                blurRadius: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
