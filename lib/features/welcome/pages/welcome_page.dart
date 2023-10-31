import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
import 'package:makers_app/features/login/pages/register_page.dart';
import 'package:makers_app/utils/config/border_radius.dart';

//@RoutePage()
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset('lib/utils/assets/animations/univ-anim.json'),
            Text('Здравствуйте'),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Next2())
                  );
                },
                child: const Text('Продолжить'))
          ],
        ),
      ),
    );
  }
}

class Next2 extends StatelessWidget {
  const Next2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Здравствуйте'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset('lib/utils/assets/animations/univ-anim.json'),
            Text('Здравствуйте'),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Next3())
                  );
                },
                child: const Text('Продолжить'))
          ],
        ),
      ),
    );
  }
}

class Next3 extends StatelessWidget {
  const Next3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Здравствуйте'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset('lib/utils/assets/animations/univ-anim.json'),
            Text('Здравствуйте'),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Next4())
                  );
                },
                child: const Text('Продолжить'))
          ],
        ),
      ),
    );
  }
}

class Next4 extends StatelessWidget {
  const Next4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Здравствуйте'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset('lib/utils/assets/animations/univ-anim.json'),
            Text('Здравствуйте'),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: borderR20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderR20,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginOrRegister())
                  );
                },
                child: const Text('Продолжить'))
          ],
        ),
      ),
    );
  }
}

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Здравствуйте'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset('lib/utils/assets/animations/univ-anim.json'),
            Text('Вход'),
            SizedBox(height: 60),
            ElevatedButton(
                onPressed: () async {
                  await Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ));
                },
                child: const Text('Логин')),
            ElevatedButton(
                onPressed: () async {
                  await Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => RegisterPage(),
                  ));
                },
                child: const Text('Регистрация'))
          ],
        ),
      ),
    );
  }
}

