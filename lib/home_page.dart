import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:lenovo_app/homepage_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 80,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
        body: SafeArea(
            child: DefaultTabController(
          length: 6,
          child: Column(children: <Widget>[
            ButtonsTabBar(
              radius: 30,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              backgroundColor: Color(0XFF294E95),
              unselectedBackgroundColor: Color(0XFFEAEEF5),
              unselectedLabelStyle: TextStyle(color: Color(0XFF294E95)),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              buttonMargin: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Tab(
                  text: "TODAY",
                ),
                Tab(
                  text: "YESTERDAY",
                ),
                Tab(
                  text: "MONTH",
                ),
                Tab(
                  text: "QUATER",
                ),
                Tab(
                  text: "YTD",
                ),
                Tab(
                  text: "LIFETIME",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: HCard()
                  ),

                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                  Center(
                    child: Icon(Icons.directions_car),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }
}
