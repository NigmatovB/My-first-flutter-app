import 'package:flutter/material.dart';

class InteriorPage extends StatelessWidget {
  const InteriorPage({ Key? key }) : super(key: key);

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
                    image: AssetImage('assets/images/carSalon_white.png'),
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
                      "Select Interior",
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
                          "Black and White",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 20.0,
                              color: Colors.black),
                        ),
                        Text(
                          "\$1,000",
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
                          "All Black",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 20.0,
                              color: Colors.grey),
                        ),
                        Text(
                          "Included",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 17.0,
                              color: Color.fromARGB(255, 202, 202, 202)),
                        )
                      ],
                    )
                  ],
                ),
                
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0 ),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 247, 247, 247),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.0))),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0))),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "\$5,700",
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
                            //         builder: (_) => const LastPage()));
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
