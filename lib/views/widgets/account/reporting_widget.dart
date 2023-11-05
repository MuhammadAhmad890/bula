
import 'package:flutter/material.dart';

class ReportingWidget extends StatelessWidget {
  final String text;
  final bool isChecked;

  const ReportingWidget({
    super.key,
    required this.text,
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF060C11),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            Radio(value: true, groupValue: true, onChanged: (_) {})
          ],
        ),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
