import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'hello 123',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}