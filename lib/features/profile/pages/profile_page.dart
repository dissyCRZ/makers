import 'package:flutter/material.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool image = false;
    return Scaffold(
      // body: Center(
      //   child: Text('Ошибка', style: TextStyle(fontSize: 22,),),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Профиль', style: TextStyle(color: Colors.black, fontSize: 16),),
        centerTitle: true,
        elevation: 0,

      ),
      body: const Padding(
        padding: p20h,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white, size: 50,),
                ),
              ),
              SizedBox(height: 20),
              //Text('@user_name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Данные', style: h22ManropeB,),
                  SizedBox(height: 18),
                  Text('Argen Teshebaev', style: h20Manrope,),
                  SizedBox(height: 15),
                  Text('test1@gmail.com', style: h20Manrope,),
                  SizedBox(height: 15),
                  Text('test', style: h20Manrope,),
                  SizedBox(height: 15),
                  Text('Школа №1', style: h20Manrope,),
                  SizedBox(height: 15),
                  Text('Класс 11', style: h20Manrope,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
