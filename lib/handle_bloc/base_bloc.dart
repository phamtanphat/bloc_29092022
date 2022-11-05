import 'dart:async';

import 'base_event.dart';

abstract class BaseBloc {
  StreamController<BaseEvent> _eventController = StreamController.broadcast();

  Sink get eventSink => _eventController.sink;

  BaseBloc() {
    _eventController.stream.listen((event) {
      print("Co $event");
      dispatch(event);
    });
  }

  void dispatch(BaseEvent baseEvent);

  void dispose() {
    _eventController.close();
  }
}