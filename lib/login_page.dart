import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip/signup.dart';
import 'package:get/get_core/src/get_main.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  width: w,
                  height: h*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      image: DecorationImage(

                          image:AssetImage(
                              "img/login.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),

                ),
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold
                        ),

                      ),
                      Text(
                        "Sign into your account",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[500]
                        ),

                      ),
                      SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1,1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1,1),
                                  color: Colors.grey.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Container(),),
                        ],
                      )

                    ],
                  ),
                ),

                SizedBox(height: 40,),
                Container(
                  width: w*0.3,
                  height: h*0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image:AssetImage(
                              "img/register.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Login IN",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),


                    ),

                  ),
                ),
                SizedBox(height: w*0.06,),
                RichText(text: TextSpan(
                    text: "Don't have an account",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20,
                    ),

                    children: [
                      TextSpan(
                          text: " Sign UP",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to((SignIn_Page())),)

                    ]
                ))

              ]),
        ));
  }
}
