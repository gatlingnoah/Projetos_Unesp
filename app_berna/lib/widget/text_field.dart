import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  // Construtor
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText = '',
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  // build do text field
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,

      keyboardType: keyboardType,
      // tipo de teclado
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}



                // TextFormField(
                //   //controller: contentController,
                //   decoration: InputDecoration(
                //     contentPadding: new EdgeInsets.symmetric(
                //         vertical: MediaQuery.of(context).size.height * .10,
                //         horizontal: 10.0),
                //     border: OutlineInputBorder(),
                //     hintText: 'Treść',
                //     fillColor: Color(0xffffffff),
                //     filled: true,
                //     prefixIcon: Icon(Icons.topic_rounded),
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'as'; //ErrorMessages.NO_CONTENT_MESSAGE;
                //     }
                //   },
                // ),
