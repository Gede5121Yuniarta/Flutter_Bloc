// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  String getStatus(int newCounter){
    return newCounter % 2 == 0 ? "Genap" : "Ganjil" ;
  }

  void Increment(){
    final int newCounter = state.counter + 1;
    final String newStatus = getStatus(newCounter);
    emit(CounterState(counter: newCounter, status: newStatus));
  }

  void decrement(){
    final int newCounter = state.counter - 1;
    final String newStatus = getStatus(newCounter);
    emit(CounterState(counter: newCounter, status: newStatus));
  }
}
