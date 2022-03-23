// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:tesla/screens/autopilot_page.dart';
import 'package:tesla/screens/exterior_page.dart';
import 'package:tesla/screens/home_page.dart';
import 'package:tesla/screens/interior_page.dart';
import 'package:tesla/screens/select_page.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

bool border = true;

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                        (route) => false);
                  },
                  icon: const Icon(Icons.logout),
                )),
              )
            ],
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            bottom: const TabBar(
              tabs: [
                Text(
                  "1.Car",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontFamily: 'OpenSans'),
                ),
                Text(
                  "2.Exterior",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontFamily: 'OpenSans'),
                ),
                Text(
                  "3.Interior",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontFamily: 'OpenSans'),
                ),
                Text(
                  "4.Autopilot",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'OpenSans'),
                ),
              ],
              isScrollable: true,
              indicatorColor: Colors.red,
              unselectedLabelStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            SelectCar(),
            ExteriorPage(),
            InteriorPage(),
            AutoPage()
          ],
        ),
      ),
    );
  }
}
