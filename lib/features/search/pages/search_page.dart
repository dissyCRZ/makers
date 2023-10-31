import 'package:flutter/material.dart';
import 'package:makers_app/features/search/pages/filter_page.dart';
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
                  prefixIcon: Image.asset('lib/utils/assets/icons/search.png'),
                  suffixIcon: GestureDetector(
                    child: Image.asset('lib/utils/assets/icons/tuning.png'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => FilterPage(),
                      ));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Link(
              //     target: LinkTarget.self,
              //     uri: Uri.parse('https://instagram.com/makerskg?igshid=MzRlODBiNWFlZA=='),
              //     builder: (context, followLink) => GestureDetector(
              //       onTap: followLink,
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(20),
              //         child: Container(
              //           height: 300,
              //           width: double.infinity,
              //           child: Image.network(
              //             'https://scontent.ffru7-1.fna.fbcdn.net/v/t39.30808-6/338402410_138040292549814_832667862961691600_n.jpg?stp=dst-jpg_s640x640&_nc_cat=111&ccb=1-7&_nc_sid=49d041&_nc_ohc=d62Jwx-v29cAX-6qF9g&_nc_ht=scontent.ffru7-1.fna&oh=00_AfDLiyPxj7Ibz8ihnimkcN_AaFhSSBARn-QpScOuMym4ig&oe=651EFE50',
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              //     ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
