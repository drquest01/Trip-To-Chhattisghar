import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trip/appCubitlogics.dart';
import 'package:trip/auth.dart';
import 'package:trip/cubitapp.dart';

import 'package:trip/login_page.dart';
import 'package:trip/main_page.dart';
import 'package:trip/signup.dart';
import 'package:trip/welcome.dart';
  Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp().then((value) => Get.put(AuthController()));

  runApp(const MyApp());
}


 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  BlocProvider<AppCubits>(
        create: (context)=>AppCubits(),
        child: AppCubitlogic(),
      ),
    );
  }
}
