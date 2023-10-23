import 'package:actual/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget{
  final String? hintText;
  final String? errText;
  final bool obscureText; // 비밀번호로 표시
  final bool autofocus;
  final Color fillColor;
  final ValueChanged<String>? onChnage; // action, delegate 이벤트 함수를 연결

  const CustomTextFromField({
    this.hintText,
    this.errText,
    this.fillColor = inputBGColor,
    this.obscureText = false,
    this.autofocus = false,
    required this.onChnage,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: inputBorderColor,
        width: 1.0,
      )
    );

    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChnage,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        errorText: errText,
        hintStyle: const TextStyle(
          color: bodyTextColor,
          fontSize: 14.0
        ),
        fillColor: fillColor,
        filled: true,
        border: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: inputErrBGColor
          )
        ),
        enabledBorder: baseBorder,
      ),
    );
  }
}