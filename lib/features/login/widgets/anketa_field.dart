import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/login/widgets/email_field.dart';
import 'package:makers_app/features/login/widgets/google_auth_button.dart';
import 'package:makers_app/features/login/widgets/come_in_button.dart';
import 'package:makers_app/features/login/widgets/password_field.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/texts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AnketaField extends StatelessWidget {
  final controller;
  final String text;
  final String hintText;
  final bool keyboard;
  AnketaField({super.key, this.controller, required this.text, required this.hintText, required this.keyboard});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: h18Manrope),
        const SizedBox(height: 10),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keyboard ? TextInputType.number : TextInputType.text,
          controller: controller,
          validator: (value) {
            // final bool emailValid = RegExp(
            //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            //     .hasMatch(value!);
            // if (value!.isEmpty) {
            //   return "Поле не может быть пустым";
            // } else if (!emailValid) {
            //   return "Введите корректный email";
            // } else return null;
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.borderGray),
                borderRadius: borderR10),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.mainBlue),
                borderRadius: borderR10),
            border: OutlineInputBorder(),
            hintText: hintText,
            //hintMaxLines: 2,
            hintStyle: const TextStyle(color: AppColor.fontHintColor),
          ),
        ),
      ],
    );
  }
}
