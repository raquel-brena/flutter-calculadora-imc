import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final Color color;

  const Square({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 16,
      height: 16,
    );
  }
}
