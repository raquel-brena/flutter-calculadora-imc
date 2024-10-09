import 'package:flutter/material.dart';

class ResultCalc extends StatefulWidget {
  final double imc;

  const ResultCalc({Key? key, required this.imc}) : super(key: key);

  @override
  _ResultCalcState createState() => _ResultCalcState();
}

class _ResultCalcState extends State<ResultCalc> {

  @override
  Widget build(BuildContext context) {
    String _status;
    String _media;
    String _url;

    double _imc = widget.imc;
    
    if (_imc > 0 && _imc < 18.5) {
      _status = "Abaixo do peso";
      _media = "SEU IMC < 18,5";
      _url = "images/1.png";
    } else if (_imc >= 18.5 && _imc < 24.9) {
      _status = "Peso normal";
      _media = "18,5 <= SEU IMC < 25";
      _url = "images/2.png";
    } else if (_imc >= 25 && _imc < 29.9) {
      _status = "Sobrepeso";
      _media = "25 <= SEU IMC < 30";
      _url = "images/3.png";
    } else if (_imc >= 25 && _imc < 29.9) {
      _status = "Obesidade Grau I";
      _media = "35 <= SEU IMC < 40";
      _url = "images/4.png";
    } else if (_imc >= 25 && _imc < 29.9) {
      _status = "Obesidade Grau II";
      _media = "25 <= SEU IMC < 30";
      _url = "images/5.png";
    } else if (_imc >= 40 ) {
      _status = "Obesidade Mórbida";
      _media = "IMC >= 40";
      _url = "images/6.png";
    } else {
      _status = "";
      _media = "";
      _url = "";
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "STATUS",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade500),
        ),
        SizedBox(height: 5),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            height: 120,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _status,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      _imc.toStringAsFixed(2),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.yellow.shade700),
                    ),
                    Text(
                      _media,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                if (widget.imc > 0) Image(image: AssetImage(_url))
              ],
            )),
      ],
    );
  }
}
