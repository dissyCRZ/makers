import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class PasswordField extends StatefulWidget {
  final controller;
  final String text;
  final String hintText;

  const PasswordField(
      {super.key, this.controller, required this.text, required this.hintText});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool visibility = true;
  bool isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: h18Manrope),
        const SizedBox(height: 10),
        TextFormField(
          onChanged: (val) {
            setState(() {

            });
          },
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          controller: widget.controller,
          obscureText: visibility,
          validator: (value) {
            if (value!.isEmpty) {
              return "Поле не может быть пустым";
              return "";
            }
            else if (value.length < 8) {
              return "Пароль должен быть не менее 8 символов";
              return "";
            }
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
            suffixIcon:
                //========================
                // InkWell(
                //   onTap: (){},
                //   child: Icon(
                //       visibility ? Icons.visibility_off_outlined : Icons.visibility_outlined
                //   ),
                // )
                //========================
                IconButton(
                    onPressed: () {
                      setState(() {
                        visibility ? visibility = false : visibility = true;
                      });
                    },
                    icon: visibility
                        ? const Icon(Icons.visibility_off_outlined,
                            color: AppColor.fontHintColor
                    )
                        : const Icon(Icons.visibility_outlined,
                            //color: AppColor.mainBlue
                    )),
          ),
        )
      ],
    );
  }
}
