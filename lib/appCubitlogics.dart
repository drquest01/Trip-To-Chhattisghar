import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip/cubitstates.dart';
import 'package:trip/main_page.dart';
import 'package:trip/welcome.dart';

import 'cubitapp.dart';

class AppCubitlogic extends StatefulWidget {
  const AppCubitlogic({Key? key}) : super(key: key);

  @override
  State<AppCubitlogic> createState() => _AppCubitlogicState();
}

class _AppCubitlogicState extends State<AppCubitlogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context,state){
          if(state is WelcomeState){
            return Main_Page();


          }
          if(state is LoadingStates){
            return Center(child: CircularProgressIndicator(),);


          }else
            {
              return Container();
            }
        },
      ),
    );
  }
}
