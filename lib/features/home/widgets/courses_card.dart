import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/my_button.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/margins.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';
import "package:flutter/foundation.dart";


class CoursesCard extends StatefulWidget {
  const CoursesCard({super.key, required this.id, required this.title, required this.duration, required this.numLectures, required this.isPaid, required this.buttonText, required this.price, required this.onPressed});
  final id;
  final title;
  final duration;
  final numLectures;
  final buttonText;
  final price;
  final isPaid;
  final void Function() onPressed;

  @override
  State<CoursesCard> createState() => _CoursesCardState();
}

class _CoursesCardState extends State<CoursesCard> {
  bool isFavorite = false;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Text(widget.title, style: h22Manrope,)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite ? isFavorite = false : isFavorite = true;
                      });
                    },
                      child: isFavorite ? Image.asset('lib/utils/assets/icons/favorite_true.png') : Image.asset('lib/utils/assets/icons/favorite_false.png')),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Image.asset('lib/utils/assets/icons/calendar.png'),
                  SizedBox(width: 4),
                  Text('Срок обучения: ${widget.duration}', style: h16Manrope,),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Image.asset('lib/utils/assets/icons/play.png'),
                  SizedBox(width: 4),
                  Text('${widget.numLectures} Видеолекций', style: h16Manrope,),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: widget.onPressed,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: borderR10,
                            border: Border.all(color: AppColor.mainBlue)
                          ),
                          child: Center(child: Text(widget.buttonText, style: h16ManropeB,)),
                        ),
                      ),
                    ),
                    widget.isPaid ? Padding(
                      padding: p20h,
                      child: Text('${widget.price}с/мес', style: h14Manrope,),
                    ) : Text(''),
                  ],
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
