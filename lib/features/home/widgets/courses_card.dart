import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/my_button.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';
import "package:flutter/foundation.dart";


class CoursesCard extends StatelessWidget {
  const CoursesCard({super.key, required this.id, required this.title, required this.duration, required this.numLectures, required this.videoUrl, required this.isPaid, required this.buttonText, required this.price, required this.onPressed});
  final id;
  final title;
  final duration;
  final numLectures;
  final videoUrl;
  final buttonText;
  final price;
  final isPaid;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: p20h,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: borderR20,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: h24Manrope,),
              const SizedBox(height: 18),
              Text('Разработка веб-приложения', style: h16Manrope,),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: borderRMax,
                        border: Border.all(color: AppColor.borderGray),
                      ),
                      child: const Text('JavaScript', style: h13Manrope,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: borderRMax,
                        border: Border.all(color: AppColor.borderGray),
                      ),
                      child: const Text('JavaScript', style: h13Manrope,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: borderRMax,
                        border: Border.all(color: AppColor.borderGray),
                      ),
                      child: const Text('Java', style: h13Manrope,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: borderRMax,
                        border: Border.all(color: AppColor.borderGray),
                      ),
                      child: const Text('Python', style: h13Manrope,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text('Срок обучения: ${duration} месяца', style: h16Manrope,),
              const SizedBox(height: 16),
              Text('$numLectures Видеолекций', style: h16Manrope,),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: onPressed,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: borderR10,
                            border: Border.all(color: AppColor.mainBlue)
                          ),
                          child: Center(child: Text(buttonText, style: h16ManropeB,)),
                        ),
                      ),
                    ),
                    isPaid ? Padding(
                      padding: p20h,
                      child: Text('${price}с/мес', style: h14Manrope,),
                    ) : Text(''),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              // const Text('JavaScript'),
            ],
          ),
        ),
      ),
    );
  }
}
