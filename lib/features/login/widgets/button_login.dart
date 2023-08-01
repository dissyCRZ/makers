import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/texts.dart';

class ButtonLogin extends StatefulWidget {
  const ButtonLogin({Key? key, required this.onPressed, required this.bc}) : super(key: key);
  final void Function() onPressed;
  final Color bc;

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.bc,
          borderRadius: borderR10,
        ),
        child: Center(child: Text(S.of(context).next, style: h16ManropeW,)),
      ),
    );
  }
}
