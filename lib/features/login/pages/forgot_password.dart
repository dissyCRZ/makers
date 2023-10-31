import 'package:flutter/material.dart';
import 'package:makers_app/features/login/pages/reset_password.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/login/widgets/email_field.dart';
import 'package:makers_app/features/main/widgets/nav_bar.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constrains) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: constrains.maxHeight
              ),
              child: IntrinsicHeight(
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: p20h,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Image.asset('lib/utils/assets/images/makers_logo.png'),
                          //const SizedBox(height: 100),
                          Expanded(child: Container(),),
                          Text('Забыли пароль?', style: h20Manrope),
                          const SizedBox(height: 15),
                          Text('Введите вашу почту, и мы отправим вам\nссылку для восстановление пароля', style: h14Manrope, textAlign: TextAlign.center,),
                          const SizedBox(height: 50),
                          EmailField(text: S.of(context).email, hintText: 'example@gmail.com', controller: emailController),
                          const SizedBox(height: 30),
                          ButtonLogin(
                            bc: AppColor.mainBlue,
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {

                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => ResetPassword(),
                                ));
                              } else {
                                //showDialog(context: context, builder: (_) => AlertDialog(content: Text('неверная почта или пароль'),),);
                              }
                            },
                          ),
                          const SizedBox(height: 70),
                          Expanded(child: Container(),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
