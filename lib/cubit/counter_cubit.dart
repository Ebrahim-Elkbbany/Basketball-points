import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(IntialState());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamCounter({required String teamName, required int buttonNumber}) {
    if (teamName == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterAState());
    }else  {
      teamBPoint += buttonNumber;
      emit(CounterBState());
    }
  }
  void deleteTeamPoint({required String teamName, required int buttonNumber}) {
    if (teamName == 'A') {
      teamAPoint -= buttonNumber;
      emit(DeleteAState());
    }else  {
      teamBPoint -= buttonNumber;
      emit(DeleteBState());
    }
  }

  void resetCounter({required String teamName}){
    if(teamName == 'A') {
      teamAPoint = 0;
      emit(ResetCounterAState());
    }else{
      teamBPoint = 0;
      emit(ResetCounterBState());
    }
  }


}
