import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final bool isBold;

  const MenuItem({super.key, required this.title, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: isBold ? 18 : 16,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
