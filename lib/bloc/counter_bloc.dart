import 'package:bloc_29092022/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterBaseEvent, CounterStateBase> {

  CounterBloc() : super(NewValueCounterState(value: 0)) {
    on<InCreaseEvent>((event, emit) {
      int value = event.value;
      int result = value + (state as NewValueCounterState).value;
      emit(NewValueCounterState(value: result));
    });
  }

}