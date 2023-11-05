import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltersTile extends StatefulWidget {
  final String title;
  final Widget? subtitle;

  const FiltersTile({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  State<FiltersTile> createState() => _FiltersTileState();
}

class _FiltersTileState extends State<FiltersTile> {
  bool radioState = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: widget.subtitle,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w500,
        height: 0.10,
      ),
      subtitleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w400,
      ),
      trailing: CupertinoSwitch(
        value: radioState,
        activeColor: Theme.of(context).primaryColor,
        onChanged: (val) {
          setState(
            () {
              radioState = val;
            },
          );
        },
      ),
    );
  }
}
