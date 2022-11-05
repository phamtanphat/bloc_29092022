import 'package:flutter/material.dart';
class DemoCounterPage extends StatefulWidget {

  @override
  State<DemoCounterPage> createState() => _DemoCounterPageState();
}

class _DemoCounterPageState extends State<DemoCounterPage> {
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
            Text("Count"),
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
