import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:makers_app/features/login/data/client/register_client.dart';
import 'package:makers_app/features/login/data/models/register_user.dart';
import 'package:makers_app/features/login/pages/anketa_page.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
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
import 'package:flutter_localizations/flutter_localizations.dart';

//@RoutePage()
class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: p20h,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset('lib/utils/assets/images/makers_logo.png'),
                  const SizedBox(height: 100),
                  Text(S.of(context).registration, style: h24Manrope),
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => CustomNavigationBar(),
                        ));
                        var user = RegisterUser(email: emailController.text, password: passwordController.text, schoolNumber: 1, schoolName: 'schoolController.text', studentClass: 'classController.text');
                        var responese = await RegisterClient().post('/register/', user).catchError((err) {});
                        if (responese == null) return;
                        print('successful:');
                        print('info: ' + emailController.text + '  ' + passwordController.text);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AnketaPage(emailController: emailController.text, passwordController: passwordController.text)));
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (_) => CustomNavigationBar(),
                        // ));
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (_) => AnketaPage(emailController: emailController.text, passwordController: passwordController.text,),
                        // ));
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
                    label: S.of(context).come_in,
                    onPressed: () async {
                      await Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     _locale = Locale('kg');
        //
        //
        //   },
        //   child: Icon(Icons.g_translate),
        // ),
      ),
    );
  }
}