import 'package:flutter/material.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset('lib/utils/assets/icons/back_arrow.png'),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('lib/utils/assets/icons/tuning.png'),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: p20h,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text('Фильтрация', style: h20Manrope,),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ExpansionTile(
                  leading: Image.asset('lib/utils/assets/icons/courses_filter.png'),
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  title: Text('Курсы', style: h16Manrope),
                  children: [
                    Text('Python', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('JavaScript', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('Flutter', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('Java', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('Kotlin', style: h18Manrope,),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              SizedBox(height: 25),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ExpansionTile(
                  leading: Image.asset('lib/utils/assets/icons/price_filter.png'),
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  title: Text('Цена', style: h16Manrope),
                  children: [
                    Text('Бесплатно', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('до 10,000', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('до 20,000', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('до 30,000', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('до 40,000', style: h18Manrope,),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              SizedBox(height: 25),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ExpansionTile(
                  leading: Image.asset('lib/utils/assets/icons/duretion_filter.png'),
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  title: Text('Длительность', style: h16Manrope),
                  children: [
                    Text('До 2месяцев', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('До 4месяцев', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('До 6месяцев', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('До 8месяцев', style: h18Manrope,),
                    SizedBox(height: 25),
                    Text('До 12месяцев', style: h18Manrope,),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
