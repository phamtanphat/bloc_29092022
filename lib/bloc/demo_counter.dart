
import 'package:bloc_29092022/bloc/counter_event.dart';
import 'package:bloc_29092022/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
class DemoCounterPage extends StatefulWidget {

  @override
  State<DemoCounterPage> createState() => _DemoCounterPageState();
}

class _DemoCounterPageState extends State<DemoCounterPage> {
  late CounterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = CounterBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Counter"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterStateBase>(
                bloc: bloc,
                builder: (context, state) {
                  return Text("Count: ${state.value}");
                },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      bloc.add(InCreaseEvent(value: 1));
                    },
                    child: Text("+")
                ),
                ElevatedButton(
                    onPressed: () {

                    },
                    child: Text("-")
                ),
                ElevatedButton(
                    onPressed: () {

                    },
                    child: Text("=0")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
