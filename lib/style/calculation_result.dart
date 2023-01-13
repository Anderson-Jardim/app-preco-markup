import 'package:flutter/material.dart';

class CalculationResult extends StatelessWidget {
  String texto;
  String numero;
  String texto2;
  String numero2;

  CalculationResult(
      {key,
      required this.texto,
      required this.texto2,
      required this.numero,
      required this.numero2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: const Color(0xFFFF7BAC),
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  texto,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  numero,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  texto2,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  numero2,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
