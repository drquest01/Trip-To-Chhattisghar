import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable{}
class InitialState extends CubitStates{
  @override
  List<Object> get props=>[];
}
class WelcomeState extends CubitStates{
  @override
  List<Object>get props=>[];
}
class LoadingStates extends CubitStates{
  @override
  List<Object>get props=>[];
}

class LoadedStates extends CubitStates{
  @override
  List<Object>get props=>[];
}