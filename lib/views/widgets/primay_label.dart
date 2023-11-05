import 'package:flutter/material.dart';

class PrimaryLabel extends StatelessWidget {
  final String label;

  const PrimaryLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
