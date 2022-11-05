abstract class CounterBaseEvent {}

class InCreaseEvent extends CounterBaseEvent {
  int value;

  InCreaseEvent({required this.value});
}