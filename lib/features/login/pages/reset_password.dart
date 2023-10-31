import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/login/widgets/password_field.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();
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
                          PasswordField(text: S.of(context).password, hintText: S.of(context).add_password, controller: passwordController,),
                          const SizedBox(height: 28),
                          PasswordField(text: 'Подтвердите пароль', hintText: S.of(context).add_password, controller: rePasswordController,),
                          const SizedBox(height: 30),
                          ButtonLogin(
                            bc: AppColor.mainBlue,
                            onPressed: () {
                              if (passwordController == rePasswordController) {

                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (_) => ResetedPassword(),
                                ));
                              } else {
                                //showDialog(context: context, builder: (_) => AlertDialog(content: Text('неверная почта или пароль'),),);
                              }
                            },
                          ),
                          const SizedBox(height: 30),
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

class ResetedPassword extends StatelessWidget {
  const ResetedPassword({super.key});

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
                  child: Padding(
                    padding: p20h,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Image.asset('lib/utils/assets/images/makers_logo.png'),
                        //const SizedBox(height: 100),
                        Expanded(child: Container(),),
                        Text('Ваш пароль успешно изменен', style: h20Manrope),
                        const SizedBox(height: 15),
                        const SizedBox(height: 30),
                        ButtonLogin(
                          bc: AppColor.mainBlue,
                          onPressed: () async {
                            if (true) {

                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (_) => ResetedPassword(),
                              ));
                            } else {
                              //showDialog(context: context, builder: (_) => AlertDialog(content: Text('неверная почта или пароль'),),);
                            }
                          },
                        ),
                        const SizedBox(height: 30),
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
    );
  }
}

