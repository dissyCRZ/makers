import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:makers_app/features/login/data/client/register_client.dart';
import 'package:makers_app/features/login/data/models/register_user.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
import 'package:makers_app/features/login/widgets/anketa_field.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/login/widgets/email_field.dart';
import 'package:makers_app/features/login/widgets/google_auth_button.dart';
import 'package:makers_app/features/login/widgets/come_in_button.dart';
import 'package:makers_app/features/login/widgets/password_field.dart';
import 'package:makers_app/features/main/widgets/nav_bar.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AnketaPage extends StatelessWidget {
  AnketaPage(
      {super.key,
      required this.emailController,
      required this.passwordController});

  final formKey = GlobalKey<FormState>();
  final emailController;
  final passwordController;
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final cityController = TextEditingController();
  final schoolController = TextEditingController();
  final numSchoolController = TextEditingController();
  final classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constrains) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constrains.maxHeight),
              child: IntrinsicHeight(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: p20h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Center(
                            child: Image.asset(
                                'lib/utils/assets/images/makers_logo.png')),
                        const SizedBox(height: 30),
                        const Center(
                            child: Text('Заполнить анкету', style: h24Manrope)),
                        const SizedBox(height: 40),
                        AnketaField(
                          text: 'Имя',
                          hintText: 'Введите ваше имя',
                          controller: nameController,
                          keyboard: false,
                        ),
                        //MyTextFormField(text: S.of(context).email, hintText: 'example@gmail.com', controller: emailController, obscureText: false,),
                        const SizedBox(height: 10),
                        AnketaField(
                          text: 'Фамилия',
                          hintText: 'Введите вашу фамилию',
                          controller: surnameController,
                          keyboard: false,
                        ),
                        //MyTextFormField(text: S.of(context).password, hintText: S.of(context).addPassword, controller: passwordController, obscureText: true,),
                        const SizedBox(height: 30),
                        const Text(
                          'Информация о вашей школе',
                          style: h17Manrope,
                        ),
                        const SizedBox(height: 12),
                        AnketaField(
                          text: 'Город обучения',
                          hintText: 'Введите ваш город',
                          controller: cityController,
                          keyboard: false,
                        ),
                        const SizedBox(height: 10),
                        AnketaField(
                          text: 'Школа',
                          hintText: 'Введите название вашей школы',
                          controller: schoolController,
                          keyboard: false,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Flexible(
                                child: AnketaField(
                              text: 'Номер школы',
                              hintText: 'Введите номер вашей школы',
                              controller: numSchoolController,
                              keyboard: true,
                            )),
                            const SizedBox(width: 20),
                            Flexible(
                                child: AnketaField(
                              text: 'Класс обучения',
                              hintText: 'Введите ваш класс',
                              controller: classController,
                              keyboard: true,
                            )),
                          ],
                        ),
                        const SizedBox(height: 50),
                        ButtonLogin(
                          bc: AppColor.mainBlue,
                          onPressed: () async {
                            print('info: ' + emailController + ' ' + passwordController);
                            //int.parse(numSchoolController.text)
                            var user = RegisterUser(
                                email: emailController,
                                password: passwordController,
                                firstName: nameController.text,
                                lastName: surnameController.text,
                                location: cityController.text,
                                schoolNumber:
                                    int.parse(numSchoolController.text),
                                schoolName: schoolController.text,
                                studentClass: classController.text,);
                            var responese = await RegisterClient()
                                .post('/register/', user)
                                .catchError((err) {});
                            if (responese == null) return;
                            print('successful:');
                            print('info: ' +
                                emailController +
                                '  ' +
                                passwordController);
                            // if (formKey.currentState!.validate()) {
                            //   var user = RegisterUser(email: 'fluttertest@mail.com', password: 'password', schoolNumber: 1, schoolName: 'schoolName', studentClass: 'studentClass');
                            //   var respones = await RegisterClient().post('/register', user).catchError((err) {});
                            //   if (respones == null) return;
                            //   debugPrint('successful:');
                            //
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (_) => CustomNavigationBar(),
                            ));
                            // } else {
                            //   //showDialog(context: context, builder: (_) => AlertDialog(content: Text('неверная почта или пароль'),),);
                            // }
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
