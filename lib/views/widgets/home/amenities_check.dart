import 'package:flutter/material.dart';

class AmenitiesCheck extends StatefulWidget {
  final String name;

  const AmenitiesCheck({super.key, required this.name});

  @override
  State<AmenitiesCheck> createState() => _AmenitiesCheckState();
}

class _AmenitiesCheckState extends State<AmenitiesCheck> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.name,
          overflow: TextOverflow.fade,
          style: const TextStyle(

            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        Checkbox(
            value: checkValue,
            onChanged: (bool? value) {
              setState(() {
                checkValue = value!;
              });
            })
      ],
    );
  }
}
