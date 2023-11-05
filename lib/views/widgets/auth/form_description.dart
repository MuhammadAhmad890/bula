import 'package:flutter/material.dart';

class FormDescription extends StatelessWidget {
  final String description;

  const FormDescription({super.key, required this.description,});

  @override
  Widget build(BuildContext context) {
    return Text(
    description,
    textAlign: TextAlign.center,
    style: const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w300,

    ),);
  }
}
