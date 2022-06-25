import 'package:flutter/material.dart';

class Glassmourphism extends StatefulWidget {
  static const id = "/glassmourphism";

  const Glassmourphism({Key? key}) : super(key: key);

  @override
  State<Glassmourphism> createState() => _GlassmourphismState();
}

class _GlassmourphismState extends State<Glassmourphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFF12711),
                Color(0xFFF5AF19),
              ],
            )
        ),
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.35),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
