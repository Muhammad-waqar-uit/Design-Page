import 'package:flutter/material.dart';

class Card_Swiper extends StatefulWidget {
  const Card_Swiper({Key? key}) : super(key: key);

  @override
  State<Card_Swiper> createState() => _Card_SwiperState();
}

class _Card_SwiperState extends State<Card_Swiper> {
  int number = 1;
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 2.1,
            height: MediaQuery.of(context).size.height * 0.14,
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset('assets/previusrides.jpg',fit: BoxFit.cover,)),
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.cyan,
                )),
                Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/foundout.jpg',
                          fit: BoxFit.cover,
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                    ))
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
