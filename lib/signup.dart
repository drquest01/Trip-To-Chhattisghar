import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:trip/auth.dart';
import 'package:trip/welcome.dart';

class SignIn_Page extends StatefulWidget {

  const SignIn_Page({Key? key}) : super(key: key);

  @override
  State<SignIn_Page> createState() => _SignIn_PageState();
}

class _SignIn_PageState extends State<SignIn_Page> {
  @override
  Widget build(BuildContext context) {
    var emailcontroller=TextEditingController();
    var passwordcontroller=TextEditingController();
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
          width: w,
          height: h*0.43,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:AssetImage(
                      "img/signup.png"
                  ),
                  fit: BoxFit.cover
              )
          ),
           child: Column(
             children: [
               SizedBox(height: h*0.23,),
               CircleAvatar(
                 radius: 60,
                 backgroundImage: AssetImage(
                   "img/profile1.png"
                 ),
               )
             ],
           ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
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
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter your Email Id.",
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
              SizedBox(height: 40,),
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
                  controller: passwordcontroller ,
                  obscureText: true,
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



            ],
          ),
        ),
        SizedBox(height: 30,),
        GestureDetector(
          onTap: (){
            AuthController.instance.register( emailcontroller.text.trim(), passwordcontroller.text.trim());
          },

          child: Container(
            width: w*0.3,
            height: h*0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image:AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text(
                "Sign UP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),

              ),
            ),
          ),
        ),
        SizedBox(height: w*0.07,),
            RichText(text: TextSpan(
                text: "Already Have an account",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                      text: " Sign IN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),

            )
                ]
            ))

  ]),
      ));
  }
}
