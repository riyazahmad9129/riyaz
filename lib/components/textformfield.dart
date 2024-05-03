import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final String? hintText;
  final BorderRadius? borderRadius;
  final Color? fillColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final bool isObscure;
  final Widget? suffixWidget;
  final int? maxLines;
  final  initialValue;
  const MyTextField(
      {super.key, this.isObscure = false, this.hintText, this.borderRadius, this.fillColor, this.controller, this.validator, this.inputType, this.suffixWidget, this.maxLines, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: TextFormField(
          initialValue: initialValue,
          obscureText: isObscure,
          controller: controller,
          // textInputAction: TextInputAction.next,
          keyboardType: inputType,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 2,left: 15),
            hintText: hintText,
            suffix: suffixWidget,
            border: OutlineInputBorder(

              borderRadius: borderRadius ??
                   BorderRadius.circular(10),
              borderSide: BorderSide.none
            ),
            filled: true,
            fillColor: Color(0xFFe0edf6),
          ),
        ),
      ),
    );
  }
}