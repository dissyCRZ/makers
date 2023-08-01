import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/texts.dart';

class MyButton extends StatefulWidget {
  MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: m20H,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.mainBlue,
            borderRadius: borderR10,
          ),
          child: Center(child: Text(S.of(context).next, style: h16ManropeW,)),
        ),
    );
  }
}
