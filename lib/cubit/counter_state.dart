part of 'counter_cubit.dart';

abstract class CounterCubitState {
  int counter;

  CounterCubitState(this.counter);
}

class CubitInitialState extends CounterCubitState {
  CubitInitialState(int counter) : super(counter);
}

class CubitChangedState extends CounterCubitState {
  CubitChangedState(int counter) : super(counter);
}
