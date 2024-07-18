import 'package:flutter/material.dart';

import '../common/widgets/button_grid.dart';

class RepeaterPage extends StatelessWidget {
  const RepeaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("I'm a repeater"),
          const ButtonGrid(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Extra tips')),
          )
        ],
      )),
    ));
  }
}
