// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tesla/screens/home_page.dart';

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/redcar.png'),
                      fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              alignment: Alignment.center,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Summary",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.grey,
                        fontSize: 23.0,
                        decoration: TextDecoration.none
                      ),
                    ),size( 0.0, 38.0 ),

                    const Text(
                      "Your Model Y",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontSize: 46.0,
                        decoration: TextDecoration.none
                      ),
                    ),size(0.0, 14.0),

                    const Text(
                      "\$60,700",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontSize: 35.0,
                        decoration: TextDecoration.none
                      ),
                    ),size(0.0, 50.0),

                    ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(180.0, 60.0),
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()));
                          },
                          child: const Text(
                            "PAY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'OpenSans'),
                          )),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox size( w, h ) => SizedBox( width: w, height: h, );
}
