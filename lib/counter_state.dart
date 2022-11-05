abstract class CounterStateBase {}

class NewValueCounterState extends CounterStateBase {
  int value;

  NewValueCounterState({required this.value});
}