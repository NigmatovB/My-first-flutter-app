// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../tabbar/tabbar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Model Y",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'OpenSans', fontSize: 46.0),
            ),
            Container(
              height: 332.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/blackTesla.png"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      "300 mi",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 35.0),
                    ),
                    Text(
                      "Range (EPA est.)",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0),
                    )
                  ],
                ),
                Container(
                  width: 1.0,
                  height: 57.0,
                  color: Color.fromARGB(255, 136, 136, 136),
                ),
                Column(
                  children: const [
                    Text(
                      "AWD",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 35.0),
                    ),
                    Text(
                      "Dual Motor",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: RichText(
                  text: const TextSpan(
                      text: "Acceleration:  ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0),
                      children: [
                    TextSpan(
                      text: "0-60 mph in 3.5s",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0),
                    )
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RichText(
                  text: const TextSpan(
                      text: "Top speed:  ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0),
                      children: [
                    TextSpan(
                      text: "up to 150 mph",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0),
                    )
                  ])),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, right: 60.0, left: 60.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 60),
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Tabbar()), (route) => false);
            },
            child: const Text(
              "ORDER NOW",
              style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
            )),
      ),
    );
  }
}
