import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class MyTextFormField extends StatefulWidget {
  final controller;
  final String text;
  final String hintText;
  final bool obscureText;

  MyTextFormField({super.key, required this.text, required this.hintText, this.controller, required this.obscureText});

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: p20h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.text, style: h18Manrope),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: AppColor.borderGray), borderRadius: borderR10),
              focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: AppColor.mainBlue), borderRadius: borderR10),
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: AppColor.fontHintColor),
              suffixIcon: widget.obscureText ?
              IconButton(
                  onPressed: () {
                    setState(() {
                      visibility ? visibility = false : visibility = true;
                      //widget.obscureText ? widget.obscureText = false : widget.obscureText = true;
                    });
                  },
                  icon: visibility ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined)
              ) : null
            ),
          )
          // Container(color: Colors.red,
          // width: double.infinity,
          // height: 50,
          // )
        ],
      ),
    );
  }
}
