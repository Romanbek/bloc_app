import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CubitInitialState(0));

  void increment() {
    state.counter++;
    emit(CubitChangedState(state.counter));
  }

  void decrement() {
    state.counter--;
    emit(CubitChangedState(state.counter));
  }
}
