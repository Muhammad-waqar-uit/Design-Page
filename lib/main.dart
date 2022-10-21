import 'package:firstscreen/card_swiper.dart';
import 'package:firstscreen/screen_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20),backgroundColor: Colors.cyanAccent);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  'Find Your \nNearest Ride !',
                  style: TextStyle(color: Colors.cyan),
                  textScaleFactor: ScaleSize.textScaleFactor(context,maxTextScaleFactor: 4),
                ),
                Image.asset('assets/location.gif',
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.height * 0.10)
              ],
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.cyan,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Search Rides',
              style: TextStyle(color: Colors.cyan),
              textScaleFactor: ScaleSize.textScaleFactor(context,maxTextScaleFactor: 4),
            ),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.023),
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.023),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.cyan),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.location_on,
                        color: Colors.cyan,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.cyan,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Source",
                      hintStyle: const TextStyle(color: Colors.cyan),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.cyan),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search, color: Colors.cyan),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.cyan,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Destination",
                      hintStyle: const TextStyle(color: Colors.cyan),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Theme(
                    data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: Colors.cyan,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(08)
                          )
                        ),
                      ),
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width*0.09,
                      width: MediaQuery.of(context).size.width*0.39,
                      child: ElevatedButton(
                        child:  Text('Search',style: TextStyle(
                        ), textScaleFactor: ScaleSize.textScaleFactor(context,maxTextScaleFactor: 3),),
                        onPressed: () {},
                      ),
                    ),
                  ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.050,
              ),
              Card_Swiper()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
