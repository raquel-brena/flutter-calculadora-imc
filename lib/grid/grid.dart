import 'package:flutter/material.dart';
import 'package:mini_projeto_01/grid/components/square.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: const [
        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),

        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 68, 0, 255)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),

        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),
        
        Square(color: Color.fromARGB(255, 68, 0, 255)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),

        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 255, 0, 0)),
        Square(color: Color.fromARGB(255, 251, 255, 0)),

        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 68, 0, 255)),
        
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 3, 109, 21)),
        Square(color: Color.fromARGB(255, 68, 0, 255)),
      ],

    );
  }
}
