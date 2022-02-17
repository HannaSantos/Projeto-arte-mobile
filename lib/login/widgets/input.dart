import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({Key? key, required this.text, this.colorInputs}) : super(key: key);
  final String text;
  final Color? colorInputs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorInputs ?? const Color.fromARGB(131, 207, 147, 63),
      ),
      child: TextField(
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(
            left: 20,
            top: 15,
            right: 20,
            bottom: 15,
          ),
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
