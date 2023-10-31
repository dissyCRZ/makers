import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/anketa_field.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class PaidCourseRegistr extends StatelessWidget {
  const PaidCourseRegistr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: p20h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Flexible(child: Text('Оставьте заявку и мы обязательно вас проконсультируем',
              style: h24ManropeB,)),
        SizedBox(height: 20),
        AnketaField(text: 'Имя Фамилия', hintText: '', keyboard: false),
        SizedBox(height: 15),
        AnketaField(text: 'Ваш номер телефона', hintText: '', keyboard: true),
        SizedBox(height: 30),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.mainBlue,
              borderRadius: borderR10,
            ),
            child: Center(child: Text('Отправить', style: h16ManropeW,)),
          ),
        ),
        ],
      ),
    ),)
    ,
    );
  }
}
