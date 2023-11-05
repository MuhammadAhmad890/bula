import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String text;

  const FormLabel({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Color(0xFF2196F3),
    fontSize: 27,
    fontFamily: 'Open Sans',
    fontWeight: FontWeight.w600,
    ),
    );
  }
}
