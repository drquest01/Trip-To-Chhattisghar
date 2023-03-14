

import 'package:bloc/bloc.dart';
import 'package:trip/cubitstates.dart';
import 'package:trip/appCubitlogics.dart';


class AppCubits extends Cubit<CubitStates>{
  AppCubits():super(InitialState()) {
    emit(WelcomeState());
  }
  void getdata(){
    try{
      emit(LoadingStates());
    }catch(e){}
  }

}