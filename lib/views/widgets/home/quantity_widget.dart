import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuantityWidget extends StatefulWidget {
  final String title;
  final String subtitle;

  const QuantityWidget({
    super.key,
    required this.subtitle,
    required this.title,
  });

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${widget.title}\n',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: widget.subtitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        number--;
                      });
                    },
                    child: const Icon(CupertinoIcons.minus_circled)),
                const SizedBox(width: 5),
                Text(number.toString(), style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),),
                const SizedBox(width: 5),
                InkWell(
                    onTap: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: const Icon(CupertinoIcons.add_circled)),
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(thickness: 2, color: Color(0xFFD9DDE1),)
      ],
    );
    return ListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w500,
      ),
      subtitleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w300,
        height: 0.14,
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.minus_circled),
          const SizedBox(width: 5),
          Text(number.toString()),
          const SizedBox(width: 5),
          const Icon(CupertinoIcons.add_circled),
        ],
      ),
    );
  }
}
