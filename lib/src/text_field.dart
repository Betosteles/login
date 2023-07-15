import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final Text labelText;
  final TextInputType? keyboardType;
  final TextEditingController controlador;


  const TextFieldCustom({super.key, 
  required this.labelText, 
  this.keyboardType = TextInputType.name,
  required this.controlador});

  @override
  Widget build(BuildContext context) {
    return TextField( 
      decoration:  InputDecoration(label: labelText,
      ),
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword,
      controller: controlador,
     );
  }
}