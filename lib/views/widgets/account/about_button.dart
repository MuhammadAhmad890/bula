import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTrailTap;

  const AboutButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTrailTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          title: Text(
            title,
          ),
          subtitle: Text(subtitle),
          titleTextStyle: TextStyle(
            color: Color(0xFF1A2A34),
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w700,
          ),
          subtitleTextStyle: TextStyle(
            color: Color(0xFF060C11),
            fontSize: 12,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          trailing: InkWell(
            onTap: onTrailTap,
            child: const Icon(
              CupertinoIcons.forward,
            ),
          ),
        ),
        Divider(
          color: Color(0xFFD9DDE1),
          thickness: 2,
        )
      ],
    );
  }
}
