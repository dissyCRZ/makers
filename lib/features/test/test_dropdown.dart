import 'package:flutter/material.dart';

class TestDropDown extends StatelessWidget {
  const TestDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('CS:GO GuideLines'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8)),
                  //height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                            'lib/assets/images/assault_rifles/ak47/ak47_default.png'),
                      ),
                      const Text(
                        'AK-47',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Theme(
                  data: ThemeData().copyWith(unselectedWidgetColor: const Color(0xffefeff5), // here for close state
                      colorScheme: const ColorScheme.light(
                        primary: Color(0xffefeff5),
                      ),dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Transform(
                      transform:  Matrix4.translationValues(-16.0, 0.0, 0.0),
                      child: const Text('Specifications',
                          style: TextStyle(color: Color(0xffefeff5), fontSize: 24)),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(8)),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('RELOAD TIME',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '2.5 ',),
                                          TextSpan(text: 'SEC', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('HEAD DAMAGE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '143',),
                                          TextSpan(text: '/111', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('BODY DAMAGE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '44',),
                                          TextSpan(text: '/34', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('KILL AWARD',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '\$300',),
                                          TextSpan(text: '/\$150', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('MAGAZINE CAPACITY',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '30',),
                                          TextSpan(text: '/90', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('INGAME PRICE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '\$2700',),
                                          TextSpan(text: '', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('ACCURACY RANGE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '22',),
                                          TextSpan(text: ' M', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('RATE OF FIRE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '600 ',),
                                          TextSpan(text: 'SHOTS/MIN', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('RUNNING SPEED',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: '215',),
                                          TextSpan(text: ' MS', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('SIDE',
                                      style: TextStyle(color: Color(0xff6f6b9c), fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Color(0xffefeff5), fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(text: 'TERRORISTS',),
                                          TextSpan(text: '', style: TextStyle(color: Color(0xff6f6b9c),)),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  color: const Color(0xffefeff5),
                                  height: 1,
                                  width: double.infinity,
                                ),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(unselectedWidgetColor: const Color(0xffefeff5), // here for close state
                      colorScheme: const ColorScheme.light(
                        primary: Color(0xffefeff5),
                      ),dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Transform(
                      transform:  Matrix4.translationValues(-16.0, 0.0, 0.0),
                      child: const Text('Description',
                          style: TextStyle(color: Color(0xffefeff5), fontSize: 24)),
                    ),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff222127),
                            borderRadius: BorderRadius.circular(8)),
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Automatic assault rifle. Based on a rifle developed in the Soviet Union in 1949. To date, this is the most popular and widely used rifle in the world. Among the main advantages of AK-47 are high damage and a relatively low price. Disadvantages include low accuracy and high recoil after several shots.',
                              style: TextStyle(color: Color(0xffb7b4bf), fontSize: 16)),
                        ),
                      )
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(unselectedWidgetColor: const Color(0xffefeff5), // here for close state
                      colorScheme: const ColorScheme.light(
                        primary: Color(0xffefeff5),
                      ),dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Transform(
                      transform:  Matrix4.translationValues(-16.0, 0.0, 0.0),
                      child: const Text('Spray control',
                          style: TextStyle(color: Color(0xffefeff5), fontSize: 24)),
                    ),
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                                'lib/assets/gifs/ak47_recoil.gif'
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Image.asset(
                                'lib/assets/gifs/ak47_spray.gif'
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Image.asset(
                                'lib/assets/svg_files/AK47recoil.gif'
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(unselectedWidgetColor: const Color(0xffefeff5), // here for close state
                      colorScheme: const ColorScheme.light(
                        primary: Color(0xffefeff5),
                      ),dividerColor: Colors.transparent),
                  child: ExpansionTile(
                      title: Transform(
                        transform:  Matrix4.translationValues(-16.0, 0.0, 0.0),
                        child: const Text('Rarity stats',
                            style: TextStyle(color: Color(0xffefeff5), fontSize: 24)),
                      ),
                      children:[
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Covert',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('18',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffD85752),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Classified',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('11',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffC142DE),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Restricted',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('7',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff7F50F6),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Mil-Spec',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('4',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff516AF2),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Industrial Grade',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('4',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff6C97D4),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),
                          ],
                        )
                      ]
                  ),
                ),


                Theme(
                  data: ThemeData().copyWith(unselectedWidgetColor: const Color(0xffefeff5), // here for close state
                      colorScheme: const ColorScheme.light(
                        primary: Color(0xffefeff5),
                      ),dividerColor: Colors.transparent),
                  child: ExpansionTile(
                      title: const Text('Categories',
                          style: TextStyle(color: Color(0xffefeff5), fontSize: 24)),
                      children:[
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Normal',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('9',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffB2B2B2),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('StatTrak™',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('29',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffCF6A32),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Souvenir',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text('6',
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffF8D749),
                                  borderRadius: BorderRadius.circular(40)),
                              height: 4,
                              width: double.infinity,
                            ),
                          ],
                        )
                      ]
                  ),
                ),


                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff6f6b9c),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        height: 50,
                        width: double.infinity,
                        child: const Center(
                            child: const Text('SKINS', style: TextStyle(
                                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold
                            ),
                            )
                        )
                    )
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}
