import 'package:flutter/material.dart';
import 'package:makers_app/utils/config/border_radius.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:url_launcher/link.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: p20h,
          child: Column(
            children: [
              SizedBox(height: 30),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColor.fontHintColor),
                      borderRadius: borderR10),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColor.fontHintColor),
                      borderRadius: borderR10),
                  border: OutlineInputBorder(),
                  hintText: 'Поиск',
                  //hintMaxLines: 2,
                  hintStyle: const TextStyle(color: AppColor.fontHintColor),
                ),
              ),
              SizedBox(height: 30),
              Link(
                  target: LinkTarget.self,
                  uri: Uri.parse('https://instagram.com/argen_teshebaev?igshid=MjEwN2IyYWYwYw=='),
                  builder: (context, followLink) => GestureDetector(
                    onTap: followLink,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://instagram.ffru7-1.fna.fbcdn.net/v/t51.2885-15/179186566_1344134795972060_1727126116611696490_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.ffru7-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=qFGBbZ1bJmoAX_hSNU0&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MjU2MzQ2MTY1MDI2NzQ4ODYyMg%3D%3D.2-ccb7-5&oh=00_AfC1-SVbYHCC-v04Sn3I2IsyiZdKMVe1cGeEJ2MUr8vRxQ&oe=64D24987&_nc_sid=ee9879',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
