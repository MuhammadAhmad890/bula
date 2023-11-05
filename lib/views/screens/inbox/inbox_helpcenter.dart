import 'package:bula/utils/constants/app_sizes.dart';
import 'package:bula/views/widgets/account/custom_back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxHelpScreen extends StatelessWidget {
  const InboxHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
      ),
      body: ListView(
        padding: AppSizes.bodyHorizontalPadding,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              shadows: [
                BoxShadow(
                  color: Color(0xFFEFF1F3),
                  blurRadius: 6,
                  offset: Offset(0, 6),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.question_mark,),
                  title: Text("Visit our help center"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
                ListTile(
                  leading: Icon(Icons.error_outline,),
                  title: Text("Report any concern"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
                ListTile(
                  leading: Icon(Icons.feed_outlined),
                  title: Text("Give us feedback"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
                ListTile(
                  leading: Icon(Icons.headset_mic_outlined),
                  title: Text("List your page"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
                ListTile(
                  leading: Icon(Icons.deck_outlined),
                  title: Text("Being a host"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
                ListTile(
                  leading: Icon(Icons.cottage_outlined),
                  title: Text("Visit our help center"),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF1A2A34),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black,),
                ),
                Divider(color: Color(0xFFD9DDE1), thickness: 2),
              ],
            ),
          )

        ],
      ),
    );
  }
}
