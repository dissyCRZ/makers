import 'package:flutter/material.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class EmailField extends StatefulWidget {
  final controller;
  final String text;
  final String hintText;

  EmailField(
      {super.key, this.controller, required this.text, required this.hintText});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: h18Manrope),
        const SizedBox(height: 10),
        TextFormField(
          key: formKey,
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          controller: widget.controller,
          validator: (value) {
            final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value!);
            if (value!.isEmpty) {
              return "Поле не может быть пустым";
            } else if (!emailValid) {
              return "Введите корректный email";
            } else return null;
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.borderGray),
                borderRadius: borderR10),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.mainBlue),
                borderRadius: borderR10),
            border: OutlineInputBorder(),
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: AppColor.fontHintColor),
          ),
        )
      ],
    );
  }
}
