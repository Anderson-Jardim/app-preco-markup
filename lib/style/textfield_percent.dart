import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextfieldPercent extends StatelessWidget {
  String texto;
  String textoFixo;
  TextEditingController c;
  InputTextfieldPercent({
    Key? key,
    required this.texto,
    required this.textoFixo,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: c,
            decoration: InputDecoration(
              hintText: "0.00",
              labelText: texto,
              suffixText: textoFixo,
              labelStyle: const TextStyle(fontSize: 14, color: Colors.black),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(",")],
          ),
        ),
      ],
    );
  }
}
