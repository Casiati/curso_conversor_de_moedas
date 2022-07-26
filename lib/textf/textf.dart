import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/main.dart';

Widget buildTextField(String label, String prefix, TextEditingController c, Function f){
  return TextField(
    style: TextStyle(
      color: Colors.amber,
      fontSize: 25,
    ),
    controller: c,
    onChanged: (text) {
      f(text);
    },
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        fontSize: 25,
        color: Colors.amber,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.amber),
      ),
      hintStyle: TextStyle(color: Colors.amber),
      prefixText: prefix,
    ),
  );
}
