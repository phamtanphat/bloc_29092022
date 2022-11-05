import 'package:bloc_29092022/handle_bloc/counter1_bloc.dart';
import 'package:bloc_29092022/handle_bloc/counter1_event.dart';
import 'package:flutter/material.dart';
class DemoCounterPage1 extends StatefulWidget {

  @override
  State<DemoCounterPage1> createState() => _DemoCounterPageState1();
}

class _DemoCounterPageState1 extends State<DemoCounterPage1> {

  late Counter1Bloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = Counter1Bloc();
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
            StreamBuilder<int>(
                stream: bloc.counter1.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error.toString()),);
                  }
                  switch(snapshot.connectionState) {
                    case ConnectionState.active:
                      return Text("Count: ${snapshot.data.toString()}");
                    default:
                      return Container();
                  }
                }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                        bloc.eventSink.add(InCreaseEvent(value: 1));
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
