import 'package:flutter/material.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key}) : super(key: key);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/place3.png"),
                      fit: BoxFit.cover
                    )

                  ),

            )),
          Positioned(child: Row(
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.menu)),
            ],
          ))
          ],

        ),
      ),
    );
  }
}
