import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'testcase_event.dart';
part 'testcase_state.dart';

class TestcaseBloc extends Bloc<TestcaseEvent, TestcaseState> {
  TestcaseBloc() : super(TestcaseInitial()) {
    on<SoalEvent>((event, emit) async {
      emit(await _soal1(event));
    });
    on<Soal2Event>((event, emit) async {
      emit(await _soal2(event));
    });
  }
  int deret = 0;
  int deret2 = 0;
  int n = 9;
  String deretString ='';
  int n2 = 5;
  String deretString2 ='';
  bool s1 = false;
  bool s2 = false;




  Future<TestcaseState> _soal1(SoalEvent event) async {
    s1 = true;
    s2 = false;
    if(deret <= n ){
      for (int i = 1; i <= n; i++) {

        deretString += i.toString();
        deret += i;
      }
    }

    return SucessNo1State();
  }

  Future<TestcaseState> _soal2(Soal2Event event) async {
    if(s2 ==false){
      deretString2 ='';
          deret2 = 0;
    }
    s1 = false;
    s2 = true;
    if(deret2 <= n2 ){

      for (int i = 1; i <= n2; i++) {
        deretString2 += i.toString();
        deret2 += i;
      }
    }
    for (int i = n2 - 1; i >= 1; i--) {
      deretString2 += i.toString();
      deret2 += i;
    }

    return SucessNo2State();
  }

}