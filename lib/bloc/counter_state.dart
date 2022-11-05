abstract class CounterStateBase {
  int value;
  CounterStateBase({required this.value});
}

class NewValueCounterState extends CounterStateBase {
  NewValueCounterState({required super.value});
}