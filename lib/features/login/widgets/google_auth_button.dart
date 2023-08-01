import 'package:flutter/material.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/texts.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderR10,
          border: Border.all(width: 1, color: AppColor.borderBlack)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/utils/assets/icons/icons_google.png'),
              SizedBox(width: 20),
              Text(S.of(context).in_with_google, style: h17Manrope,),
            ],
          ),
      ),
    );
  }
}
