import 'dart:async';
import 'package:bloc_29092022/handle_bloc/base_event.dart';
import 'package:bloc_29092022/handle_bloc/counter1_event.dart';
import 'base_bloc.dart';

class Counter1Bloc extends BaseBloc {
  int value = 0;
  StreamController<int> counter1 = StreamController();

  @override
  void dispatch(BaseEvent baseEvent) {
    if (baseEvent is InCreaseEvent) {
      _increase(baseEvent);
    }
  }

  void _increase(InCreaseEvent event) async{
    value += event.value;
    counter1.sink.add(value);
  }
}