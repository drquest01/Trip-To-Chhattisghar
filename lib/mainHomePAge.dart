import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip/color.dart';
import 'package:trip/widgets/app_large.dart';
import 'package:trip/widgets/app_text.dart';

import 'login_page.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with TickerProviderStateMixin {
  List place = [
    "p2.png",
    "place3.png",
    "place4.png",
  ];
  List foods = [
    "muthia.jpg",
    "chila.jpg",
    "bada.jpg",
  ];
  var explore = {
    "hotels.png": "Hotels",
    "irctc.png": "Train",
    "package.png": "Holiday Package",
    "QR.png": "Scan"
  };

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("हमर Chhattisgarh"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rahul Jangde"),
              accountEmail: Text("Jangde@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("img/pic.jpg",
                      width: 90, height: 70, fit: BoxFit.cover),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                "Favorites",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text(
                "My Reward",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text(
                "Customer Support",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Login_page()));
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(text: "Food"),
                    Tab(text: "Adventures"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15, top: 20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "img/" + place[index],
                                  ),
                                  fit: BoxFit.cover)),
                        );
                      }),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: 300,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin:
                                const EdgeInsets.only(right: 15, top: 20),
                                width: 200,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "img/" + foods[index],
                                        ),
                                        fit: BoxFit.cover)),
                              );
                            })
                      ],
                    ),
                  ),

                  Text("aao adventure kare"),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  AppLargeText(
                    text: "Explore more",
                    size: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(right: 50),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/" + explore.keys.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                              text: explore.values.elementAt(index),
                              color: AppColor.textcolor2,
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
