import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/texts.dart';

class ComeInButton extends StatelessWidget {
  const ComeInButton({super.key, required this.label, required this.onPressed});
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).do_u_have_account, style: h14ManropeG,),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onPressed,
              child: Text(label,
              style: h14ManropeB,)),
      ],
    );
  }
}
