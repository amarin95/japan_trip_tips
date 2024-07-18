import 'package:flutter/material.dart';
import 'package:japan_trip_tips/pages/first_time/first_time_page.dart';
import 'package:japan_trip_tips/pages/repeater/repeater_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  _openAboutAppModal(final BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "lib/assets/home_background.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const RepeaterPage()),
                        );
                      },
                      child: const Text('Repeater'),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FirstTimePage()));
                      },
                      child: const Text('First timer'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _openAboutAppModal(context),
            tooltip: 'About of',
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
