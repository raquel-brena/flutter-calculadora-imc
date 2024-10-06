import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Select extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final bool isPassword;
  final String? erroText;
  final ValueChanged<String?>? onchanged;
  final Color? backgroundColor, labelColor;

  const Select({
    Key? key,
    this.controller,
    this.placeholder,
    required this.isPassword,
    this.erroText,
    this.onchanged,
    this.backgroundColor,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: DropdownButtonFormField(
        items: [
          DropdownMenuItem(
            child: Text("Item 1"),
            value: 1,
          )
        ],
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          hintText: placeholder,
          hintStyle: TextStyle(color: Colors.black26),
          contentPadding: EdgeInsets.symmetric(
            vertical:  10,
            horizontal:5,
          ),
         
        ),
        onChanged: (int? value) {},
      ),
    );
  }
}
