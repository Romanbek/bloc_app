import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    on<IncrementEvent>((event, emit) {
      state.counter++;
      emit(CounterChanged(state.counter));
    });
    on<DecrementEvent>((event, emit) {
      state.counter--;
      emit(CounterChanged(state.counter));
    });
  }
}
