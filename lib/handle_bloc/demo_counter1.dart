import 'package:flutter/material.dart';
class DemoCounterPage1 extends StatefulWidget {

  @override
  State<DemoCounterPage1> createState() => _DemoCounterPageState1();
}

class _DemoCounterPageState1 extends State<DemoCounterPage1> {

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
            Text("Count: "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {

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
