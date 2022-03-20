part of 'counter_bloc.dart';

abstract class CounterState {
  int counter;
  CounterState(this.counter);
}

class CounterInitial extends CounterState {
  CounterInitial(int counter) : super(counter);
}

class CounterChanged extends CounterState {
  CounterChanged(int counter) : super(counter);
}
