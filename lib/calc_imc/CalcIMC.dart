import 'package:flutter/material.dart';
import 'package:mini_projeto_01/calc_imc/components/FormCalc.dart';
import 'package:mini_projeto_01/calc_imc/components/ResultCalc.dart';

class CalcIMC extends StatefulWidget {
  const CalcIMC({Key? key}) : super(key: key);

  @override
  _CalcIMCState createState() => _CalcIMCState();
}

class _CalcIMCState extends State<CalcIMC> {
  double _imc = 0.0;

  void _calculateIMC(double peso, double altura) {
    setState(() {
      _imc = peso / ((altura / 100) * (altura / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              FormCalc(onCalculate: _calculateIMC),
              SizedBox(height: 20),
              ResultCalc(
                imc: _imc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
