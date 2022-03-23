// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tesla/screens/last_page.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.0001,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/auto.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.5,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 22.0),
                    child: Text(
                      "Autopilot",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 23.0,
                          color: Color.fromARGB(255, 141, 141, 141)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Full Self-Driving",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 20.0,
                              color: Colors.black),
                        ),
                        Text(
                          "\$5,000",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              color: Colors.red),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Autopilot",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 20.0,
                              color: Colors.grey),
                        ),
                        Text(
                          "\$3,000",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              color: Color.fromARGB(255, 202, 202, 202)),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding:EdgeInsets.only( top: 10.0 ),
                  child: Text(
                    "Aromatic driving from highway on-rampto off-ramp including interchanges and overtaking slower cars.",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16.0,
                        color: Colors.grey),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "\$60,700",
                        style:
                            TextStyle(fontFamily: 'OpenSans', fontSize: 27.0),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(180.0, 60.0),
                            primary: Colors.white,
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
                                    builder: (_) => const LastPage()));
                          },
                          child: const Text(
                            "NEXT",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'OpenSans'),
                          )),
                    ],
                  ),
                )

              ]),
            ),
          ),
        ),
      ],
    );
  }
}
