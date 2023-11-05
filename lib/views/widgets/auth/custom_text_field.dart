import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/widgets_controller.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  Widget? prefix;
  Widget? postFix;
  bool isPassword;
  Function? onChange;
  WidgetsController? stateController;

  CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.stateController,
    this.isPassword = false,
    this.postFix,
    this.prefix,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: stateController == null ? isPassword : stateController!.showPassword.value,
      onChanged: onChange != null
          ? (val) {
              onChange!(val);
            }
          : null,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF7B7B7B),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF7B7B7B),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF7B7B7B),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF7B7B7B),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF7B7B7B),
          ),
        ),
        prefixIcon: prefix,
        suffixIcon: stateController != null
            ? IconButton(
                onPressed: () {
                  stateController!.hidePassword();
                },
                icon: stateController!.showPassword.value
                    ? Icon(Icons.remove_red_eye)
                    : Icon(CupertinoIcons.eye_slash),
              )
            : postFix != null
                ? postFix
                : SizedBox(),
      ),
    );
  }
}
