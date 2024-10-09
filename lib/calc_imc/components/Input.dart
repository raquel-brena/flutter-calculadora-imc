import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool isPassword;
  final String? erroText;
  final ValueChanged<String>? onchanged;
  final Color? backgroundColor, labelColor;
  

  const Input({
    Key? key,
    this.controller,
    required this.label,
    required this.isPassword,
    this.erroText,
    this.onchanged,
    this.backgroundColor,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label, style: const TextStyle(fontWeight: FontWeight.w800),),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: TextFormField(
            controller: controller,
            onChanged: onchanged,
            obscureText: isPassword,
            keyboardType: TextInputType.number,
            decoration: 
            InputDecoration(
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.yellow.shade600),
              ),
              hintStyle: const TextStyle(color: Colors.black26),
              contentPadding: const EdgeInsets.symmetric(
                vertical:  5,
                horizontal: 5,
              ),
              
              filled: true,
              fillColor: backgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
