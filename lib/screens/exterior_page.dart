// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ExteriorPage extends StatelessWidget {
  const ExteriorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 242, 245, 248),
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.71,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 40.0, top: 30, bottom: 16.0),
                      child: Text(
                        'Select car',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'OpenSans',
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    height: 250.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/car_white.png'))),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Pearl White Multi-Coat',
                            style: TextStyle(
                                fontSize: 27.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                          Text(
                            '\$2,000',
                            style: TextStyle(
                                fontSize: 23.0,
                                fontFamily: 'OpenSans',
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 40,
                    indent: 40,
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left : 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "20’’ Performance Wheels",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                          Text(
                            "Carbon fiber spoiler",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 20.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "\$57,700",
                    style: TextStyle(fontFamily: 'OpenSans', fontSize: 27.0),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(180.0, 60.0),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => const AutoPage()));
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
            ),
          )
        ],
      ),
    );
  }
}
