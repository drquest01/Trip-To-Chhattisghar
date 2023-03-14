import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip/login_page.dart';
import 'package:trip/welcome.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth =FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
     ever(_user,_initialScreen);


  }
  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>Login_page());

    }else{
      Get.offAll(()=>Home_page());
    }
  }
  void register(String email,password)async {
      try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
      }catch(e){

        Get.snackbar("About User","User Meassage",
        backgroundColor: Colors.redAccent,
        snackPosition:SnackPosition.BOTTOM,
          titleText: Text(
              "Account creation failed",
               style: TextStyle(
                 color: Colors.white

               )   ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
              color: Colors.white
            ),
          )
        );
              

      }

  }
  void login(String email,password)async {
    try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){

      Get.snackbar("About User","login Message",
          backgroundColor: Colors.redAccent,
          snackPosition:SnackPosition.BOTTOM,
          titleText: Text(
              "Login Failed",
              style: TextStyle(
                  color: Colors.white

              )   ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
                color: Colors.white
            ),
          )
      );



    }

  }
  void logout()async{
    await auth.signOut();

  }


}
