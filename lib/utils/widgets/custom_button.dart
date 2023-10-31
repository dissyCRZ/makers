import 'package:flutter/material.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/texts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.onPressed, required this.bc, required this.text}) : super(key: key);
  final void Function() onPressed;
  final String text;
  final Color bc;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
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
        child: Center(child: Text(widget.text, style: h16ManropeW,)),
      ),
    );
  }
}
