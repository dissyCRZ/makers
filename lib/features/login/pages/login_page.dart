import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:makers_app/features/login/data/client/login_client.dart';
import 'package:makers_app/features/login/data/models/login_user.dart';
import 'package:makers_app/features/login/pages/register_page.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/login/widgets/email_field.dart';
import 'package:makers_app/features/login/widgets/google_auth_button.dart';
import 'package:makers_app/features/login/widgets/come_in_button.dart';
import 'package:makers_app/features/login/widgets/password_field.dart';
import 'package:makers_app/features/main/widgets/nav_bar.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

//@RoutePage()
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              child: Center(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: p20h,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Image.asset('lib/utils/assets/images/makers_logo.png'),
                        const SizedBox(height: 100),
                        Text('Вход в аккаунт', style: h24Manrope),
                        const SizedBox(height: 50),
                        EmailField(text: S.of(context).email, hintText: 'example@gmail.com', controller: emailController),
                        //MyTextFormField(text: S.of(context).email, hintText: 'example@gmail.com', controller: emailController, obscureText: false,),
                        const SizedBox(height: 10),
                        PasswordField(text: S.of(context).password, hintText: S.of(context).add_password, controller: passwordController,),
                        //MyTextFormField(text: S.of(context).password, hintText: S.of(context).addPassword, controller: passwordController, obscureText: true,),
                        const SizedBox(height: 30),
                        ButtonLogin(
                          bc: AppColor.mainBlue,
                          onPressed: () async {
                          if (formKey.currentState!.validate()) {

                            var user = LoginUser(email: emailController.text, password: passwordController.text);
                            var responese = await LoginClient().post('/login/', user).catchError((err) {});
                            if (responese == null) return;
                            print('successful:');

                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (_) => CustomNavigationBar(),
                            ));
                          } else {
                            //showDialog(context: context, builder: (_) => AlertDialog(content: Text('неверная почта или пароль'),),);
                          }
                        },
                        ),
                        //MyButton(),
                        const SizedBox(height: 20),
                        Text(S.of(context).or, style: h18ManropeG,),
                        const SizedBox(height: 20),
                        const GoogleAuthButton(),
                        const SizedBox(height: 30),
                        ComeInButton(
                          label: 'Регистрация',
                          onPressed: () async {
                            await Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (_) => RegisterPage(),
                            ));
                          },
                        ),
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
