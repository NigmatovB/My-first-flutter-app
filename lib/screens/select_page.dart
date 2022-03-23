// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';

class SelectCar extends StatelessWidget {
  const SelectCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 242, 245, 248),
        // color: Colors.red,
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            // color: Colors.red,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 30, bottom: 16.0),
                    child: Text(
                      'Select your car',
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
                          image: AssetImage('assets/images/car_red.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'Performance',
                            style: TextStyle(
                                fontSize: 27.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                          Text(
                            '\$55,700',
                            style: TextStyle(
                                fontSize: 23.0,
                                fontFamily: 'OpenSans',
                                color: Colors.red),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            'Long Range',
                            style: TextStyle(
                                fontSize: 27.0,
                                fontFamily: 'OpenSans',
                                color: Colors.grey),
                          ),
                          Text(
                            '\$46,700',
                            style: TextStyle(
                                fontSize: 23.0,
                                fontFamily: 'OpenSans',
                                color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.36,
            child: Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '3.5s',
                            style: TextStyle(
                                fontSize: 35.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                          Text(
                            '0-60 mph',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        width: 1.0,
                        height: 57.0,
                        color: Color.fromARGB(255, 102, 102, 102),
                      ),
                      Column(
                        children: const [
                          Text(
                            '150mph',
                            style: TextStyle(
                                fontSize: 35.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                          Text(
                            'Top Speed',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'OpenSans',
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 40),
                  child: Text(
                    'Tesla All-Wheel Drive has two independent motors. Unlike traditional all-wheel drive systems, these two motors digitally control torque to the front and rear wheels—for far better handling and traction control. ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "\$55,700",
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
                )
              ]),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              ),
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}