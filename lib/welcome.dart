import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:trip/color.dart';
import 'package:trip/cubitapp.dart';
import 'package:trip/reponsive_button.dart';
import 'package:trip/widgets/app_large.dart';
import 'package:trip/widgets/app_text.dart';

import 'main_page.dart';



class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List images=[
    "final.png",
    "welcome-two.png",
    "wl3.png",


  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage(
                      "img/"+images[index]


                  ),
                      fit: BoxFit.cover,
                  )


              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppLargeText(text: "हमर Chhattisgarh"),
                        AppText(text: "Trip To Chhattisgarh ",),
                        SizedBox(height: 30,),

                        RichText(text: TextSpan(
                            text: "Tap to..",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 10,
                            ),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()..onTap=()=>Get.to((Main_Page())),
                                text: "LET's GO ...",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic
                                ),

                              )
                            ]
                        ))


                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.mainColor
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );

          }),
    );
  }
}
