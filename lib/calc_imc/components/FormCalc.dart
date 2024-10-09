import 'package:flutter/material.dart';
import 'package:mini_projeto_01/calc_imc/components/Input.dart';

class FormCalc extends StatelessWidget {
  final Function(double, double) onCalculate;

  const FormCalc({Key? key, required this.onCalculate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _pesoController = TextEditingController();
    final TextEditingController _alturaController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "IMC",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          height: 280,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Input(
                    label: "ALTURA (CM)",
                    isPassword: false,
                    controller: _alturaController,
                    backgroundColor: Colors.grey.shade200),
                const SizedBox(height: 10),
                Input(
                    label: "PESO (KG)",
                    isPassword: false,
                    controller: _pesoController,
                    backgroundColor: Colors.grey.shade200),
                const SizedBox(height: 30),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow.shade700,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15), 
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold), 
                    ),
                    onPressed: () {
                      double? peso = double.tryParse(_pesoController.text);
                      double? altura = double.tryParse(_alturaController.text);

                      if (peso != null && altura != null) {
                        onCalculate(peso, altura);
                      }
                    },
                    child: const Text("CALCULAR"))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
